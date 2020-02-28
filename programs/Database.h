//
// Created by User on 2020/2/18.
//
#include <map>
#include <string>
#include <Windows.h>
#include "newprogram.h"
#include <thread>
#include <mutex>
#ifndef TIGERVNC_USERINFO_H
#define TIGERVNC_USERINFO_H

#define CREATE_USER_SUCCESS 0
#define CREATE_USER_EXIST_ERROR -1
#define CREATE_USER_NOTEXIST_PROGRAM_ERROR -2



class Database {
private:
    std::map<std::string, std::string> username_password;
    std::map<std::string, HWND> username_hwnd;
    std::mutex this_mutex;
public:

    bool login(const std::string & username,
               const std::string & password){
        this_mutex.lock();
        bool result = false;
        if (username_password.find(username) != username_password.end() &&
            username_password[username] == password){
            result = true;
            goto clean;
        }

        clean:
            this_mutex.unlock();
            return result;
    }

    int createUser(const std::string & username,
                   const std::string & password,
                   const std::string & programname){
        this_mutex.lock();
        int return_status = CREATE_USER_SUCCESS;
        char * lCONST = new char[programname.size() + 1];
        HWND hwnd;

        if (username_password.find(username) != username_password.end()){
            return_status = CREATE_USER_EXIST_ERROR;
            goto clean;
        }
        username_password[username] = password;
        strcpy(lCONST, programname.c_str());
        hwnd = openNewProgram(lCONST);
        if (!hwnd){
            return_status = CREATE_USER_NOTEXIST_PROGRAM_ERROR;
            goto clean;
        }
        username_hwnd[username] = hwnd;

        clean:
            delete []lCONST;
            this_mutex.unlock();
            return return_status;
    }

    HWND get_hwnd(const std::string & username){
        this_mutex.lock();
        HWND result = username_hwnd[username];
        this_mutex.unlock();
        return result;
    }
};


#endif //TIGERVNC_USERINFO_H
