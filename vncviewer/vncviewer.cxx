/* Copyright (C) 2002-2005 RealVNC Ltd.  All Rights Reserved.
 * Copyright 2011 Pierre Ossman <ossman@cendio.se> for Cendio AB
 * Copyright (C) 2011 D. R. Commander.  All Rights Reserved.
 * 
 * This is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this software; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,
 * USA.
 */

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

#include <string.h>
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <errno.h>
#include <signal.h>
#include <locale.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/stat.h>

#ifdef WIN32
#include <os/winerrno.h>
#include <direct.h>
#define mkdir(path, mode) _mkdir(path)
#endif

#if !defined(WIN32) && !defined(__APPLE__)
#include <X11/Xlib.h>
#include <X11/XKBlib.h>
#endif

#include <rfb/Logger_stdio.h>
#include <rfb/SecurityClient.h>
#include <rfb/Security.h>
#ifdef HAVE_GNUTLS
#include <rfb/CSecurityTLS.h>
#endif
#include <rfb/LogWriter.h>
#include <rfb/Timer.h>
#include <rfb/Exception.h>
#include <network/TcpSocket.h>
#include <os/os.h>

#include <FL/Fl.H>
#include <FL/Fl_Widget.H>
#include <FL/Fl_PNG_Image.H>
#include <FL/Fl_Sys_Menu_Bar.H>
#include <FL/fl_ask.H>
#include <FL/x.H>

#include "i18n.h"
#include "parameters.h"
#include "CConn.h"
#include "ServerDialog.h"
#include "UserDialog.h"
#include "vncviewer.h"
#include "fltk_layout.h"

#ifdef WIN32
#include "resource.h"
#include "win32.h"
#endif

rfb::LogWriter vlog("main");

using namespace network;
using namespace rfb;
using namespace std;

char vncServerName[VNCSERVERNAMELEN] = { '\0' };

static const char *argv0 = NULL;

static bool exitMainloop = false;
static const char *exitError = NULL;

static const char *about_text()
{
  static char buffer[1024];

  // This is used in multiple places with potentially different
  // encodings, so we need to make sure we get a fresh string every
  // time.
  snprintf(buffer, sizeof(buffer),
           _("TigerVNC Viewer %d-bit v%s\n"
             "Built on: %s\n"
             "Copyright (C) 1999-%d TigerVNC Team and many others (see README.rst)\n"
             "See https://www.tigervnc.org for information on TigerVNC."),
           (int)sizeof(size_t)*8, PACKAGE_VERSION,
           BUILD_TIMESTAMP, 2019);

  return buffer;
}

void exit_vncviewer(const char *error)
{
  // Prioritise the first error we get as that is probably the most
  // relevant one.
  if ((error != NULL) && (exitError == NULL))
    exitError = strdup(error);

  exitMainloop = true;
}

bool should_exit()
{
  return exitMainloop;
}

void about_vncviewer()
{
  fl_message_title(_("About TigerVNC Viewer"));
  fl_message("%s", about_text());
}

void run_mainloop()
{
 int next_timer;

  next_timer = Timer::checkTimeouts();
  if (next_timer == 0)
   next_timer = INT_MAX;

  if (Fl::wait((double)next_timer / 1000.0) < 0.0) {
    vlog.error(_("Internal FLTK error. Exiting."));
    exit(-1);
  }

}

static void CleanupSignalHandler(int sig)
{
  // CleanupSignalHandler allows C++ object cleanup to happen because it calls
  // exit() rather than the default which is to abort.
  vlog.info(_("Termination signal %d has been received. TigerVNC Viewer will now exit."), sig);
  exit(1);
}

static void init_fltk()
{
  // Basic text size (10pt @ 96 dpi => 13px)
  FL_NORMAL_SIZE = 13;

  // Select a FLTK scheme and background color that looks somewhat
  // close to modern systems
  Fl::scheme("gtk+");
  Fl::background(220, 220, 220);

  // Proper Gnome Shell integration requires that we set a sensible
  // WM_CLASS for the window.
  Fl_Window::default_xclass("vncviewer");

  // Set the default icon for all windows.
  HICON lg, sm;

  lg = (HICON)LoadImage(GetModuleHandle(NULL), MAKEINTRESOURCE(IDI_ICON),
                        IMAGE_ICON, GetSystemMetrics(SM_CXICON),
                        GetSystemMetrics(SM_CYICON),
                        LR_DEFAULTCOLOR | LR_SHARED);
  sm = (HICON)LoadImage(GetModuleHandle(NULL), MAKEINTRESOURCE(IDI_ICON),
                        IMAGE_ICON, GetSystemMetrics(SM_CXSMICON),
                        GetSystemMetrics(SM_CYSMICON),
                        LR_DEFAULTCOLOR | LR_SHARED);

  Fl_Window::default_icons(lg, sm);

  // This makes the "icon" in dialogs rounded, which fits better
  // with the above schemes.
  fl_message_icon()->box(FL_UP_BOX);

  // Turn off the annoying behaviour where popups track the mouse.
  fl_message_hotspot(false);

  // Avoid empty titles for popups
  fl_message_title_default(_("TigerVNC Viewer"));

#ifdef WIN32
  // Most "normal" Windows apps use this font for UI elements.
  Fl::set_font(FL_HELVETICA, "Tahoma");
#endif

  // FLTK exposes these so that we can translate them.
  fl_no     = _("No");
  fl_yes    = _("Yes");
  fl_ok     = _("OK");
  fl_cancel = _("Cancel");
  fl_close  = _("Close");

}

static void mkvnchomedir()
{
  // Create .vnc in the user's home directory if it doesn't already exist
  char* homeDir = NULL;

  if (getvnchomedir(&homeDir) == -1) {
    vlog.error(_("Could not create VNC home directory: can't obtain home "
                 "directory path."));
  } else {
    int result = mkdir(homeDir, 0755);
    if (result == -1 && errno != EEXIST)
      vlog.error(_("Could not create VNC home directory: %s."), strerror(errno));
    delete [] homeDir;
  }
}

static void usage(const char *programName)
{
#ifdef WIN32
  // If we don't have a console then we need to create one for output
  if (GetConsoleWindow() == NULL) {
    HANDLE handle;
    int fd;

    AllocConsole();

    handle = GetStdHandle(STD_ERROR_HANDLE);
    fd = _open_osfhandle((intptr_t)handle, O_TEXT);
    *stderr = *fdopen(fd, "w");
  }
#endif

  fprintf(stderr,
          "\n"
          "usage: %s [parameters] [host][:displayNum]\n"
          "       %s [parameters] [host][::port]\n"
          "       %s [parameters] -listen [port]\n"
          "       %s [parameters] [.tigervnc file]\n",
          programName, programName,

          programName, programName);

  fprintf(stderr,"\n"
          "Parameters can be turned on with -<param> or off with -<param>=0\n"
          "Parameters which take a value can be specified as "
          "-<param> <value>\n"
          "Other valid forms are <param>=<value> -<param>=<value> "
          "--<param>=<value>\n"
          "Parameter names are case-insensitive.  The parameters are:\n\n");
  Configuration::listParams(79, 14);

#ifdef WIN32
  // Just wait for the user to kill the console window
  Sleep(INFINITE);
#endif

  exit(1);
}

static void
potentiallyLoadConfigurationFile(char *vncServerName)
{
  const bool hasPathSeparator = (strchr(vncServerName, '/') != NULL ||
                                 (strchr(vncServerName, '\\')) != NULL);

  if (hasPathSeparator) {
#ifndef WIN32
    struct stat sb;

    // This might be a UNIX socket, we need to check
    if (stat(vncServerName, &sb) == -1) {
      // Some access problem; let loadViewerParameters() deal with it...
    } else {
      if ((sb.st_mode & S_IFMT) == S_IFSOCK)
        return;
    }
#endif

    try {
      const char* newServerName;
      newServerName = loadViewerParameters(vncServerName);
      // This might be empty, but we still need to clear it so we
      // don't try to connect to the filename
      strncpy(vncServerName, newServerName, VNCSERVERNAMELEN-1);
      vncServerName[VNCSERVERNAMELEN-1] = '\0';
    } catch (rfb::Exception& e) {
      vlog.error("%s", e.str());
      if (alertOnFatalError)
        fl_alert("%s", e.str());
      exit(EXIT_FAILURE);
    }
  }
}

int main(int argc, char** argv)
{
  UserDialog dlg;

  argv0 = argv[0];

  setlocale(LC_ALL, "");
  bindtextdomain(PACKAGE_NAME, LOCALE_DIR);
  textdomain(PACKAGE_NAME);

  rfb::SecurityClient::setDefaults();

  // Write about text to console, still using normal locale codeset
  fprintf(stderr,"\n%s\n", about_text());

  // Set gettext codeset to what our GUI toolkit uses. Since we are
  // passing strings from strerror/gai_strerror to the GUI, these must
  // be in GUI codeset as well.
  bind_textdomain_codeset(PACKAGE_NAME, "UTF-8");
  bind_textdomain_codeset("libc", "UTF-8");

  rfb::initStdIOLoggers();
#ifdef WIN32
  rfb::initFileLogger("C:\\temp\\vncviewer.log");
#else
  rfb::initFileLogger("/tmp/vncviewer.log");
#endif
  rfb::LogWriter::setLogParams("*:stderr:30");

#ifdef SIGHUP
  signal(SIGHUP, CleanupSignalHandler);
#endif
  signal(SIGINT, CleanupSignalHandler);
  signal(SIGTERM, CleanupSignalHandler);

  //init_fltk();

  Configuration::enableViewerParams();

  /* Load the default parameter settings */
  char defaultServerName[VNCSERVERNAMELEN] = "";
  try {
    const char* configServerName;
    configServerName = loadViewerParameters(NULL);
    if (configServerName != NULL) {
      strncpy(defaultServerName, configServerName, VNCSERVERNAMELEN-1);
      defaultServerName[VNCSERVERNAMELEN-1] = '\0';
    }
  } catch (rfb::Exception& e) {
    vlog.error("%s", e.str());
    if (alertOnFatalError)
      fl_alert("%s", e.str());
  }

  for (int i = 1; i < argc;) {
    if (Configuration::setParam(argv[i])) {
      i++;
      continue;
    }

    if (argv[i][0] == '-') {
      if (i+1 < argc) {
        if (Configuration::setParam(&argv[i][1], argv[i+1])) {
          i += 2;
          continue;
        }
      }

      usage(argv[0]);
    }

    strncpy(vncServerName, argv[i], VNCSERVERNAMELEN);
    vncServerName[VNCSERVERNAMELEN - 1] = '\0';
    i++;
  }

  // Check if the server name in reality is a configuration file
  potentiallyLoadConfigurationFile(vncServerName);

  mkvnchomedir();

#if !defined(WIN32) && !defined(__APPLE__)
  if (strcmp(display, "") != 0) {
    Fl::display(display);
  }
  fl_open_display();
  XkbSetDetectableAutoRepeat(fl_display, True, NULL);
#endif

  CSecurity::upg = &dlg;
#ifdef HAVE_GNUTLS
  CSecurityTLS::msg = &dlg;
#endif

  Socket *sock = NULL;

  if (listenMode) {
    std::list<SocketListener*> listeners;
    try {
      int port = 5500;
      if (isdigit(vncServerName[0]))
        port = atoi(vncServerName);

      createTcpListeners(&listeners, 0, port);

      vlog.info(_("Listening on port %d"), port);

      /* Wait for a connection */
      while (sock == NULL) {
        fd_set rfds;
        FD_ZERO(&rfds);
        for (std::list<SocketListener*>::iterator i = listeners.begin();
             i != listeners.end();
             i++)
          FD_SET((*i)->getFd(), &rfds);

        int n = select(FD_SETSIZE, &rfds, 0, 0, 0);
        if (n < 0) {
          if (errno == EINTR) {
            vlog.debug("Interrupted select() system call");
            continue;
          } else {
            throw rdr::SystemException("select", errno);
          }
        }

        for (std::list<SocketListener*>::iterator i = listeners.begin ();
             i != listeners.end();
             i++)
          if (FD_ISSET((*i)->getFd(), &rfds)) {
            sock = (*i)->accept();
            if (sock)
              /* Got a connection */
              break;
          }
      }
    } catch (rdr::Exception& e) {
      vlog.error("%s", e.str());
      if (alertOnFatalError)
        fl_alert("%s", e.str());
      exit_vncviewer();
      return 1; 
    }

    while (!listeners.empty()) {
      delete listeners.back();
      listeners.pop_back();
    }
  } else {
    if (vncServerName[0] == '\0') {
      ServerDialog::run(defaultServerName, vncServerName);
      if (vncServerName[0] == '\0')
        return 1;
    }

#ifndef WIN32
    if (strlen (via.getValueStr()) > 0 && mktunnel() != 0)
      usage(argv[0]);
#endif
  }

  CConn *cc = new CConn(vncServerName, sock);

  while (!exitMainloop)
    run_mainloop();

  //delete cc;

  if (exitError != NULL && alertOnFatalError)
    fl_alert("%s", exitError);

  return 0;
}
