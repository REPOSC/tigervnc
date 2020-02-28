/* Copyright (C) 2002-2005 RealVNC Ltd.  All Rights Reserved.
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

// -=- VNC Server 4.0 for Windows (WinVNC4)

#include <string.h>

#include <winvnc/VNCServerWin32.h>
#include <winvnc/VNCServerService.h>
#include <winvnc/AddNewClientDialog.h>

#include <rfb/Logger_stdio.h>
#include <rfb/Logger_file.h>
#include <rfb/LogWriter.h>
#include <network/TcpSocket.h>
#include "preprocess.h"
#include "../../programs/Database.h"
#include <thread>
#include "Else.h"
#include <list>

using namespace winvnc;
using namespace rfb;
using namespace win32;

void manager_func(Database * db){
    try {
        std::list<SocketListener *> sockListeners;
        //SocketListener * sockListener = new TcpListener(10000);
        createTcpListeners(&sockListeners, "127.0.0.1", 12345);
        printf("----GET %d Listeners-----\n", sockListeners.size());
        SocketListener * sockListener = *sockListeners.begin();
        Socket * sock = sockListener->accept();

        while (true){
            char * command = sock->inStream().readString();
            printf("Command: %s\n", command);
            if (strcmp(command, "c") == 0){
                char * username = sock->inStream().readString();
                printf("Username: %s\n", username);
                char * password = sock->inStream().readString();
                printf("Password: %s\n", password);
                char * programname = sock->inStream().readString();
                printf("Program: %s\n", programname);
                int error = db->createUser(username, password, programname);
                if (error != CREATE_USER_SUCCESS){
                    printf("Create user failed! %d\n", error);
                }
                else {
                    printf("Create user succeeded! \n");
                }
            }
            else if (strcmp(command, "d") == 0){
                return;
            }
            else {
                printf("Not supported: %s\n", command);
            }
        }
    }
    catch (Exception & e){
        printf("%s\n", e.str());
    }

}

void viewer_func(Database * db, HINSTANCE inst, HINSTANCE prevInst, char* cmdLine, int cmdShow){
    std::list<SocketListener *> sockListeners;
    //SocketListener * sockListener = new TcpListener(10000);
    createTcpListeners(&sockListeners, "127.0.0.1", 12346);
    printf("----GET %d Listeners-----\n", sockListeners.size());
    SocketListener * listenerSock = *sockListeners.begin();

    while (true){
        Socket * sock = listenerSock->accept();
        char * command = sock->inStream().readString();
        printf("Command: %s\n", command);
        if (strcmp(command, "l") == 0){
            char * username = sock->inStream().readString();
            printf("Username: %s\n", username);
            char * password = sock->inStream().readString();
            printf("Password: %s\n", password);
            bool success = db->login(username, password);
            if (!success){
                printf("Login failed! \n");
                sock->outStream().writeString("failed");
                sock->outStream().flush();
                sock->shutdown();
            }
            else {
                sock->outStream().writeString("success");
                sock->outStream().flush();
                HWND hwnd = db->get_hwnd(username);
                std::thread *new_thread = new std::thread(after_WinMain,
                                                          inst, prevInst, cmdLine, cmdShow, hwnd);
                sock->shutdown();
            }
        }
        else if (strcmp(command, "d") == 0){
            return;
        }
        else {
            printf("Not supported: %s\n", command);
        }
    }
}

int WINAPI WinMain(HINSTANCE inst, HINSTANCE prevInst, char* cmdLine, int cmdShow){
    console_init();
    Database db;

    std::thread * manager_thread = new std::thread(manager_func,
            &db);
    std::thread * viewer_thread = new std::thread(viewer_func,
            &db, inst, prevInst, cmdLine, cmdShow);
    manager_thread->join();
    viewer_thread->join();
    return 0;
}
