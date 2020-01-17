//
// Created by User on 2020/1/15.
//

#include <list>
#include <network/TcpSocket.h>
#include <network/Socket.h>
#include <iostream>
#include <unistd.h>
#include "preprocess.h"

using namespace network;

void console_init(){
    AttachConsole(ATTACH_PARENT_PROCESS);
    freopen("CONOUT$", "w", stdout);
    std::cout << "Console init succeeded." << std::endl;
}

Socket * socket_init(){
    const char * serverHost = "127.0.0.1";
    const int serverPort = 12345;
    std::list<SocketListener *> listeners;
    createTcpListeners(&listeners, serverHost, serverPort);

    Socket * sock = NULL;
    for (std::list<SocketListener*>::iterator i = listeners.begin ();
         i != listeners.end();
         i++){
        sock = (*i)->accept();
        if (sock)
            /* Got a connection */
            break;
    }
    return sock;
}

// 枚举窗口参数
typedef struct
{
    HWND hwndWindow; // 窗口句柄
    DWORD dwProcessID; // 进程ID
}EnumWindowsArg;
// 枚举窗口回调函数
BOOL CALLBACK EnumWindowsProc(HWND hwnd, LPARAM lParam)
{
    EnumWindowsArg *pArg = (EnumWindowsArg *)lParam;
    DWORD dwProcessID = 0;
    // 通过窗口句柄取得进程ID
    ::GetWindowThreadProcessId(hwnd, &dwProcessID);
    if (dwProcessID == pArg->dwProcessID)
    {
        pArg->hwndWindow = hwnd;
        // 找到了返回FALSE
        return FALSE;
    }
    // 没找到，继续找，返回TRUE
    return TRUE;
}
// 通过进程ID获取窗口句柄
HWND GetWindowHwndByPID(DWORD dwProcessID)
{
    HWND hwndRet = NULL;
    EnumWindowsArg ewa;
    ewa.dwProcessID = dwProcessID;
    ewa.hwndWindow = NULL;
    EnumWindows(EnumWindowsProc, (LPARAM)&ewa);
    if (ewa.hwndWindow)
    {
        hwndRet = ewa.hwndWindow;
    }
    return hwndRet;
}

HWND WINAPI before_WinMain() {
    console_init();
    Socket * sock = socket_init();
    char * s = sock->inStream().readString();
    std::cout << "Received " << s << std::endl;
    /* 忽略，因为这只是一个test，永远启动notepad.exe */
    sock->shutdown();

    char commandLine[] = "notepad.exe";
    STARTUPINFO si = {sizeof(si)};
    PROCESS_INFORMATION pi;
    bool bRet = CreateProcess(
            NULL,
            commandLine,
            NULL,
            NULL,
            FALSE,
            CREATE_NO_WINDOW,
            NULL,
            NULL,
            &si,
            &pi);
    Sleep(3000); /* 等待进程启动 */
    if (bRet)
    {
//        CloseHandle(pi.hThread);
//        CloseHandle(pi.hProcess);
        std::cout << "Process ID: " << pi.dwProcessId << std::endl;
        std::cout << "Thread ID: " << pi.dwThreadId << std::endl;
        HWND hwnd = GetWindowHwndByPID(pi.dwProcessId);
        std::cout << hwnd << std::endl;
        return hwnd;
    }

    return 0;
}