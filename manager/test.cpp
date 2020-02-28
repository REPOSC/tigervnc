//
// Created by User on 2020/1/15.
//


#include <iostream>
#include <network/TcpSocket.h>
#include <network/Socket.h>
#include <iostream>

using namespace network;
int main(){
    const char * serverHost = "127.0.0.1";
    const int serverPort = 12345;
    TcpSocket * sock = new TcpSocket(serverHost, serverPort);
    while (true){
        std::string shell;
        std::getline(std::cin, shell);
        sock->outStream().writeString(shell.c_str());
        sock->outStream().flush();
    }

    sock->outStream().writeString("hello world");
    sock->outStream().flush();
    sock->shutdown();
    return 0;
}