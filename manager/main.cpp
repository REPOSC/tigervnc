//
// Created by User on 2020/1/15.
//

#include <list>
#include <network/TcpSocket.h>
#include <network/Socket.h>
#include <iostream>

#pragma comment(lib, "ws2_32")
using namespace network;
int main(){
    const char * serverHost = "127.0.0.1";
    const int serverPort = 12345;
    std::list<SocketListener *> listeners;
    createTcpListeners(&listeners, serverHost, serverPort);

    network::Socket * sock = NULL;
    for (std::list<SocketListener*>::iterator i = listeners.begin ();
         i != listeners.end();
         i++){
        sock = (*i)->accept();
        if (sock)
            /* Got a connection */
        break;
    }

    char * s = sock->inStream().readString();
    std::cout << s << std::endl;
    sock->shutdown();
    return 0;
}