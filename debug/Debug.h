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

/* 下方函数的依赖函数 */
BOOL WriteBmp(const TSTRING &strFile,const std::vector<BYTE> &vtData,const SIZE &sizeImg);
BOOL WriteBmp(const TSTRING &strFile,HDC hdc);
BOOL WriteBmp(const TSTRING &strFile,HDC hdc,const RECT &rcDC);

/* 直接从设备环境截图保存bmp文件 */
bool SaveBitmapToFile(HDC hdc);
/* 将bitmap对象保存成文件 */
bool SaveBitmapToFile(HBITMAP hBitmap);
/* 从窗体句柄截图保存成文件 */
bool SavePrintWindowToFile(HWND hWnd);

#endif //TIGERVNC_DEBUG_H
