!include x64.nsh
Name "libjpeg-turbo SDK for GCC 64-bit"
OutFile "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}libjpeg-turbo-2.0.3-gcc64.exe"
InstallDir "c:\libjpeg-turbo-gcc64"

SetCompressor bzip2

Page directory
Page instfiles

UninstPage uninstConfirm
UninstPage instfiles

Section "libjpeg-turbo SDK for GCC 64-bit (required)"
!ifdef WIN64
	${If} ${RunningX64}
	${DisableX64FSRedirection}
	${Endif}
!endif
	SectionIn RO
!ifdef GCC
	IfFileExists $SYSDIR/libturbojpeg.dll exists 0
!else
	IfFileExists $SYSDIR/turbojpeg.dll exists 0
!endif
	goto notexists
	exists:
!ifdef GCC
	MessageBox MB_OK "An existing version of the libjpeg-turbo SDK for GCC 64-bit is already installed.  Please uninstall it first."
!else
	MessageBox MB_OK "An existing version of the libjpeg-turbo SDK for GCC 64-bit or the TurboJPEG SDK is already installed.  Please uninstall it first."
!endif
	quit

	notexists:
	SetOutPath $SYSDIR
!ifdef GCC
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\libturbojpeg.dll"
!else
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}turbojpeg.dll"
!endif
	SetOutPath $INSTDIR\bin
!ifdef GCC
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\libturbojpeg.dll"
!else
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}turbojpeg.dll"
!endif
!ifdef GCC
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\libjpeg-62.dll"
!else
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}jpeg62.dll"
!endif
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}cjpeg.exe"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}djpeg.exe"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}jpegtran.exe"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}tjbench.exe"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}rdjpgcom.exe"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}wrjpgcom.exe"
	SetOutPath $INSTDIR\lib
!ifdef GCC
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\libturbojpeg.dll.a"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\libturbojpeg.a"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\libjpeg.dll.a"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\libjpeg.a"
!else
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}turbojpeg.lib"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}turbojpeg-static.lib"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}jpeg.lib"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\${BUILDDIR}jpeg-static.lib"
!endif
	SetOutPath $INSTDIR\lib\pkgconfig
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\pkgscripts\libjpeg.pc"
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\pkgscripts\libturbojpeg.pc"
!ifdef JAVA
	SetOutPath $INSTDIR\classes
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\java\turbojpeg.jar"
!endif
	SetOutPath $INSTDIR\include
	File "D:/Documents/libjpeg-turbo-2.0.3/cmake-build-debug\jconfig.h"
	File "D:/Documents/libjpeg-turbo-2.0.3\jerror.h"
	File "D:/Documents/libjpeg-turbo-2.0.3\jmorecfg.h"
	File "D:/Documents/libjpeg-turbo-2.0.3\jpeglib.h"
	File "D:/Documents/libjpeg-turbo-2.0.3\turbojpeg.h"
	SetOutPath $INSTDIR\doc
	File "D:/Documents/libjpeg-turbo-2.0.3\README.ijg"
	File "D:/Documents/libjpeg-turbo-2.0.3\README.md"
	File "D:/Documents/libjpeg-turbo-2.0.3\LICENSE.md"
	File "D:/Documents/libjpeg-turbo-2.0.3\example.txt"
	File "D:/Documents/libjpeg-turbo-2.0.3\libjpeg.txt"
	File "D:/Documents/libjpeg-turbo-2.0.3\structure.txt"
	File "D:/Documents/libjpeg-turbo-2.0.3\usage.txt"
	File "D:/Documents/libjpeg-turbo-2.0.3\wizard.txt"
	File "D:/Documents/libjpeg-turbo-2.0.3\tjexample.c"
	File "D:/Documents/libjpeg-turbo-2.0.3\java\TJExample.java"
!ifdef GCC
	SetOutPath $INSTDIR\man\man1
	File "D:/Documents/libjpeg-turbo-2.0.3\cjpeg.1"
	File "D:/Documents/libjpeg-turbo-2.0.3\djpeg.1"
	File "D:/Documents/libjpeg-turbo-2.0.3\jpegtran.1"
	File "D:/Documents/libjpeg-turbo-2.0.3\rdjpgcom.1"
	File "D:/Documents/libjpeg-turbo-2.0.3\wrjpgcom.1"
!endif

	WriteRegStr HKLM "SOFTWARE\64 2.0.3" "Install_Dir" "$INSTDIR"

	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\64 2.0.3" "DisplayName" "libjpeg-turbo SDK v2.0.3 for GCC 64-bit"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\64 2.0.3" "UninstallString" '"$INSTDIR\uninstall_2.0.3.exe"'
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\64 2.0.3" "NoModify" 1
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\64 2.0.3" "NoRepair" 1
	WriteUninstaller "uninstall_2.0.3.exe"
SectionEnd

Section "Uninstall"
!ifdef WIN64
	${If} ${RunningX64}
	${DisableX64FSRedirection}
	${Endif}
!endif

	SetShellVarContext all

	DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\64 2.0.3"
	DeleteRegKey HKLM "SOFTWARE\64 2.0.3"

!ifdef GCC
	Delete $INSTDIR\bin\libjpeg-62.dll
	Delete $INSTDIR\bin\libturbojpeg.dll
	Delete $SYSDIR\libturbojpeg.dll
	Delete $INSTDIR\lib\libturbojpeg.dll.a
	Delete $INSTDIR\lib\libturbojpeg.a
	Delete $INSTDIR\lib\libjpeg.dll.a
	Delete $INSTDIR\lib\libjpeg.a
!else
	Delete $INSTDIR\bin\jpeg62.dll
	Delete $INSTDIR\bin\turbojpeg.dll
	Delete $SYSDIR\turbojpeg.dll
	Delete $INSTDIR\lib\jpeg.lib
	Delete $INSTDIR\lib\jpeg-static.lib
	Delete $INSTDIR\lib\turbojpeg.lib
	Delete $INSTDIR\lib\turbojpeg-static.lib
!endif
	Delete $INSTDIR\lib\pkgconfig\libjpeg.pc
	Delete $INSTDIR\lib\pkgconfig\libturbojpeg.pc
!ifdef JAVA
	Delete $INSTDIR\classes\turbojpeg.jar
!endif
	Delete $INSTDIR\bin\cjpeg.exe
	Delete $INSTDIR\bin\djpeg.exe
	Delete $INSTDIR\bin\jpegtran.exe
	Delete $INSTDIR\bin\tjbench.exe
	Delete $INSTDIR\bin\rdjpgcom.exe
	Delete $INSTDIR\bin\wrjpgcom.exe
	Delete $INSTDIR\include\jconfig.h
	Delete $INSTDIR\include\jerror.h
	Delete $INSTDIR\include\jmorecfg.h
	Delete $INSTDIR\include\jpeglib.h
	Delete $INSTDIR\include\turbojpeg.h
	Delete $INSTDIR\uninstall_2.0.3.exe
	Delete $INSTDIR\doc\README.ijg
	Delete $INSTDIR\doc\README.md
	Delete $INSTDIR\doc\LICENSE.md
	Delete $INSTDIR\doc\example.txt
	Delete $INSTDIR\doc\libjpeg.txt
	Delete $INSTDIR\doc\structure.txt
	Delete $INSTDIR\doc\usage.txt
	Delete $INSTDIR\doc\wizard.txt
	Delete $INSTDIR\doc\tjexample.c
	Delete $INSTDIR\doc\TJExample.java
!ifdef GCC
	Delete $INSTDIR\man\man1\cjpeg.1
	Delete $INSTDIR\man\man1\djpeg.1
	Delete $INSTDIR\man\man1\jpegtran.1
	Delete $INSTDIR\man\man1\rdjpgcom.1
	Delete $INSTDIR\man\man1\wrjpgcom.1
!endif

	RMDir "$INSTDIR\include"
	RMDir "$INSTDIR\lib\pkgconfig"
	RMDir "$INSTDIR\lib"
	RMDir "$INSTDIR\doc"
!ifdef GCC
	RMDir "$INSTDIR\man\man1"
	RMDir "$INSTDIR\man"
!endif
!ifdef JAVA
	RMDir "$INSTDIR\classes"
!endif
	RMDir "$INSTDIR\bin"
	RMDir "$INSTDIR"

SectionEnd
