#include <Windows.h>
#include <iostream>
#include <thread>
#include "Debug.h"
#include <string>

LONG waitTime = 30;
LONG sleepTime = 1000;

typedef struct {
    DWORD willTID;
    HWND willhwnd;
}LPM_ENUM;

BOOL CALLBACK EnumChildProc(_In_ HWND   hwnd, _In_ LPARAM lParam)
{
    DWORD pid = 0;
    DWORD tid = GetWindowThreadProcessId(hwnd, &pid);
    //printf("child: %d\n", tid);
    if (tid == ((LPM_ENUM*)lParam)->willTID) {
        ((LPM_ENUM*)lParam)->willhwnd = hwnd;
        return FALSE;
    }
    EnumChildWindows(hwnd, EnumChildProc, lParam);
    return TRUE;
}


BOOL CALLBACK EnumWindowsProc(HWND hwnd, LPARAM lParam)
{
    DWORD pid = 0;
    DWORD tid = GetWindowThreadProcessId(hwnd, &pid);
    //printf("father: %d\n", tid);
    if (tid == ((LPM_ENUM *)lParam)->willTID) {
        ((LPM_ENUM*)lParam)->willhwnd = hwnd;
        return FALSE;
    }
    EnumChildWindows(hwnd, EnumChildProc, lParam);
    return TRUE;
}
// 通过进程ID获取窗口句柄
HWND GetWindowHwndByPID(PROCESS_INFORMATION pi)
{
    LPM_ENUM lpm;
    lpm.willTID = pi.dwThreadId;
    lpm.willhwnd = NULL;
    DWORD timer = 0;
    while (timer++ < waitTime) {
        EnumWindows(EnumWindowsProc, (LPARAM)&lpm);
        if (lpm.willhwnd != NULL) {
            //printf("%d\n", lpm.willhwnd);
            return lpm.willhwnd;
        }
        else {
            Sleep(sleepTime);
        }
    }
    return lpm.willhwnd;
}

RECT getWindowRect(HWND hwnd) {
    RECT rect = { 0 };
    DWORD timer = 0;
    while (timer++ < waitTime) {
        GetWindowRect(hwnd, &rect);
        if (rect.left != rect.right) {
            printf("%d %d %d %d\n", rect.left, rect.top, rect.right, rect.bottom);
            return rect;
        }
        else {
            Sleep(sleepTime);
        }
    }
    return rect;
}

HWND openNewProgram(char * programname) {
    //StartInteractiveClientProcess(username, NULL, password, program);
    //*hDesk = CreateDesktop(desktopname, NULL, NULL, DF_ALLOWOTHERACCOUNTHOOK, GENERIC_ALL, NULL);
    HANDLE hProcess = 0;
    STARTUPINFO si;
    ZeroMemory(&si, sizeof(si));
    PROCESS_INFORMATION pi;
    ZeroMemory(&pi, sizeof(pi));
    si.cb = sizeof(STARTUPINFO);
    //si.lpDesktop = desktopname; //注意这里

    //DWORD mythreadID = GetCurrentThreadId();
    //HDESK myDesk = GetThreadDesktop(mythreadID);

    CreateProcess(NULL, programname, NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi);

    HWND hwnd;

    //SetThreadDesktop(*hDesk);
    //SwitchDesktop(*hDesk);
    hwnd = GetWindowHwndByPID(pi);
    SavePrintWindowToFile(hwnd);
    //SetThreadDesktop(myDesk); //显示原桌面
    //SwitchDesktop(myDesk);
    RECT rect = getWindowRect(hwnd);
    CloseHandle(pi.hProcess);
    CloseHandle(pi.hThread);
    return hwnd;
}

void closeNewProgram(HDESK hDesk) {
    CloseDesktop(hDesk);
    CloseHandle(hDesk);
}
