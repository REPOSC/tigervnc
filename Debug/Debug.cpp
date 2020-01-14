//
// Created by Administrator on 2019/12/10.
//

#include "../win/rfb_win32/IconInfo.h"

#include <rfb/LogWriter.h>
#include "Debug.h"
#include <vector>

int allbmpsServer = 0;
int allbmpsClient = 0;

bool SaveBitmapToFile(HBITMAP hBitmap)
{
    char szfilename[100] = "C:\\Users\\User\\Documents\\";
    char number[100];
    sprintf(number, "%d", allbmpsServer);
    strcat(szfilename, number);
    strcat(szfilename, "server.bmp");
    ++allbmpsServer;

    HDC hdc;			//设备描述表
    int ibits;
    WORD wbitcount;     //当前显示分辨率下每个像素所占字节数

    //位图中每个像素所占字节数，定义调色板大小，位图中像素字节大小，位图文件大小 ，写入文件字节数
    DWORD dwpalettesize = 0, dwbmbitssize, dwdibsize, dwwritten;

    BITMAP bitmap;				//位图属性结构
    BITMAPFILEHEADER bmfhdr;	//位图文件头结构
    BITMAPINFOHEADER bi;		//位图信息头结构
    LPBITMAPINFOHEADER lpbi;	//指向位图信息头结构

    //定义文件，分配内存句柄，调色板句柄
    HANDLE fh, hdib, hpal, holdpal = NULL;

    //计算位图文件每个像素所占字节数
    hdc = CreateDC("display", NULL, NULL, NULL);
    ibits = GetDeviceCaps(hdc, BITSPIXEL) * GetDeviceCaps(hdc, PLANES);
    DeleteDC(hdc);

    if (ibits <= 1)
        wbitcount = 1;
    else if (ibits <= 4)
        wbitcount = 4;
    else if (ibits <= 8)
        wbitcount = 8;
    else if (ibits <= 16)
        wbitcount = 16;
    else if (ibits <= 24)
        wbitcount = 24;
    else
        wbitcount = 32;

    //计算调色板大小
    if (wbitcount <= 8)
        dwpalettesize = (1 << wbitcount) * sizeof(RGBQUAD);

    //设置位图信息头结构
    GetObject(hBitmap, sizeof(BITMAP), (LPSTR)&bitmap);
    bi.biSize = sizeof(BITMAPINFOHEADER);
    bi.biWidth = bitmap.bmWidth;
    bi.biHeight = bitmap.bmHeight;
    bi.biPlanes = 1;
    bi.biBitCount = wbitcount;
    bi.biCompression = BI_RGB;
    bi.biSizeImage = 0;
    bi.biXPelsPerMeter = 0;
    bi.biYPelsPerMeter = 0;
    bi.biClrUsed = 0;
    bi.biClrImportant = 0;

    dwbmbitssize = ((bitmap.bmWidth * wbitcount + 31) / 32) * 4 * bitmap.bmHeight;
    //为位图内容分配内存
    hdib = GlobalAlloc(GHND, dwbmbitssize + dwpalettesize + sizeof(BITMAPINFOHEADER));
    lpbi = (LPBITMAPINFOHEADER)GlobalLock(hdib);
    *lpbi = bi;

    // 处理调色板
    hpal = GetStockObject(DEFAULT_PALETTE);
    if (hpal)
    {
        hdc = ::GetDC(NULL);
        holdpal = SelectPalette(hdc, (HPALETTE)hpal, false);
        RealizePalette(hdc);
    }

    // 获取该调色板下新的像素值
    GetDIBits(hdc, hBitmap, 0, (UINT)bitmap.bmHeight, (LPSTR)lpbi + sizeof(BITMAPINFOHEADER) + dwpalettesize, (BITMAPINFO*)lpbi, DIB_RGB_COLORS);

    //恢复调色板
    if (holdpal)
    {
        SelectPalette(hdc, (HPALETTE)holdpal, true);
        RealizePalette(hdc);
        ::ReleaseDC(NULL, hdc);
    }

    //创建位图文件
    fh = CreateFile(szfilename, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL | FILE_FLAG_SEQUENTIAL_SCAN, NULL);
    if (fh == INVALID_HANDLE_VALUE)
        return false;

    // 设置位图文件头
    bmfhdr.bfType = 0x4d42; // "bm"
    dwdibsize = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER) +
                dwpalettesize + dwbmbitssize;
    bmfhdr.bfSize = dwdibsize;
    bmfhdr.bfReserved1 = 0;
    bmfhdr.bfReserved2 = 0;
    bmfhdr.bfOffBits = (DWORD)sizeof(BITMAPFILEHEADER) +
                              (DWORD)sizeof(BITMAPINFOHEADER) + dwpalettesize;

    //写入位图文件头
    WriteFile(fh, (LPSTR)&bmfhdr, sizeof(BITMAPFILEHEADER), &dwwritten, NULL);

    //写入位图文件其余内容
    WriteFile(fh, (LPSTR)lpbi, dwdibsize, &dwwritten, NULL);
    //清除
    GlobalUnlock(hdib);
    GlobalFree(hdib);
    CloseHandle(fh);
    return true;
}



BOOL WriteBmp(const TSTRING &strFile,const std::vector<BYTE> &vtData,const SIZE &sizeImg)
{

    BITMAPINFOHEADER bmInfoHeader = {0};
    bmInfoHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmInfoHeader.biWidth = sizeImg.cx;
    bmInfoHeader.biHeight = sizeImg.cy;
    bmInfoHeader.biPlanes = 1;
    bmInfoHeader.biBitCount = 24;

    //Bimap file header in order to write bmp file
    BITMAPFILEHEADER bmFileHeader = {0};
    bmFileHeader.bfType = 0x4d42;  //bmp
    bmFileHeader.bfOffBits = sizeof(BITMAPFILEHEADER) + sizeof(BITMAPINFOHEADER);
    bmFileHeader.bfSize = bmFileHeader.bfOffBits + ((bmInfoHeader.biWidth * bmInfoHeader.biHeight) * 3); ///3=(24 / 8)

    HANDLE hFile = CreateFile(strFile.c_str(),GENERIC_WRITE,0,NULL,CREATE_ALWAYS,FILE_ATTRIBUTE_NORMAL,NULL);
    if(hFile == INVALID_HANDLE_VALUE)
    {
        return FALSE;
    }

    DWORD dwWrite = 0;
    WriteFile(hFile,&bmFileHeader,sizeof(BITMAPFILEHEADER),&dwWrite,NULL);
    WriteFile(hFile,&bmInfoHeader, sizeof(BITMAPINFOHEADER),&dwWrite,NULL);
    WriteFile(hFile,&vtData[0], vtData.size(),&dwWrite,NULL);


    CloseHandle(hFile);

    return TRUE;
}


BOOL WriteBmp(const TSTRING &strFile,HDC hdc)
{
    int iWidth = GetDeviceCaps(hdc,HORZRES);
    int iHeight = GetDeviceCaps(hdc,VERTRES);
    RECT rcDC = {0,0,iWidth,iHeight};

    return WriteBmp(strFile,hdc,rcDC);
}

BOOL WriteBmp(const TSTRING &strFile,HDC hdc,const RECT &rcDC)
{
    BOOL bRes = FALSE;
    BITMAPINFO bmpInfo = {0};
    BYTE *pData = NULL;
    SIZE sizeImg = {0};
    HBITMAP hBmp = NULL;
    std::vector<BYTE> vtData;
    HGDIOBJ hOldObj = NULL;
    HDC hdcMem = NULL;

    //Initilaize the bitmap information
    bmpInfo.bmiHeader.biSize = sizeof(BITMAPINFOHEADER);
    bmpInfo.bmiHeader.biWidth = rcDC.right - rcDC.left;
    bmpInfo.bmiHeader.biHeight = rcDC.bottom - rcDC.top;
    bmpInfo.bmiHeader.biPlanes = 1;
    bmpInfo.bmiHeader.biBitCount = 24;

    //Create the compatible DC to get the data
    hdcMem = CreateCompatibleDC(hdc);
    if(hdcMem == NULL)
    {
        goto EXIT;
    }

    //Get the data from the memory DC
    hBmp = CreateDIBSection(hdcMem,&bmpInfo,DIB_RGB_COLORS,reinterpret_cast<VOID **>(&pData),NULL,0);
    if(hBmp == NULL)
    {
        goto EXIT;
    }
    hOldObj = SelectObject(hdcMem, hBmp);

    //Draw to the memory DC
    sizeImg.cx = bmpInfo.bmiHeader.biWidth;
    sizeImg.cy = bmpInfo.bmiHeader.biHeight;
    StretchBlt(hdcMem,
               0,
               0,
               sizeImg.cx,
               sizeImg.cy,
               hdc,
               rcDC.left,
               rcDC.top,
               rcDC.right - rcDC.left + 1,
               rcDC.bottom - rcDC.top + 1,
               SRCCOPY);


    vtData.resize(sizeImg.cx * sizeImg.cy * 3);
    memcpy(&vtData[0],pData,vtData.size());
    bRes = WriteBmp(strFile,vtData,sizeImg);

    SelectObject(hdcMem, hOldObj);


    EXIT:
    if(hBmp != NULL)
    {
        DeleteObject(hBmp);
    }

    if(hdcMem != NULL)
    {
        DeleteDC(hdcMem);
    }

    return bRes;
}

bool SaveBitmapToFile(HDC hdc){
    char szfilename[100] = "D:/ll/";
    char number[100];
    sprintf(number, "%d", allbmpsClient);
    strcat(szfilename, number);
    strcat(szfilename, "client.bmp");
    ++allbmpsClient;

    WriteBmp(szfilename, hdc);
    return true;
}