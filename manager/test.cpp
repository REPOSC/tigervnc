//
// Created by User on 2020/1/15.
//


#include <iostream>
#include <network/TcpSocket.h>
#include <network/Socket.h>
using namespace network;
int main(){
    const char * serverHost = "127.0.0.1";
    const int serverPort = 12345;
    TcpSocket * sock = new TcpSocket(serverHost, serverPort);

    sock->outStream().writeString("hello world");
    sock->outStream().flush();
    sock->shutdown();
    return 0;
}