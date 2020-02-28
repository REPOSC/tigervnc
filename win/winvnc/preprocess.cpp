//
// Created by User on 2020/1/15.
//

#include <list>
#include <network/TcpSocket.h>
#include <network/Socket.h>
#include <iostream>
#include <unistd.h>
#include "preprocess.h"
#include "../../programs/Database.h"

using namespace network;

void console_init(){
    AttachConsole(ATTACH_PARENT_PROCESS);
    freopen("CONOUT$", "w", stdout);
    std::cout << "Console init succeeded." << std::endl;
}


HWND WINAPI before_WinMain(){

}