//
// Created by Administrator on 2019/12/10.
//

#include <string>
#include <vector>

#ifndef TIGERVNC_DEBUG_H
#define TIGERVNC_DEBUG_H

bool SaveBitmapToFile(HBITMAP hBitmap);

#ifdef UNICODE
#ifndef TSTRING
        #define TSTRING std::wstring
    #endif
#else
#ifndef TSTRING
#define TSTRING std::string
#endif
#endif

extern int allbmpsServer;
extern int allbmpsClient;

BOOL WriteBmp(const TSTRING &strFile,const std::vector<BYTE> &vtData,const SIZE &sizeImg);
BOOL WriteBmp(const TSTRING &strFile,HDC hdc);
BOOL WriteBmp(const TSTRING &strFile,HDC hdc,const RECT &rcDC);

bool SaveBitmapToFile(HDC hdc);

#endif //TIGERVNC_DEBUG_H
