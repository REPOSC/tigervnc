#include <Windows.h>
#include <string>

#ifndef NEW_PROGRAM_PROCESSOR
#define NEW_PROGRAM_PROCESSOR

HWND openNewProgram(char * programname);
void closeNewProgram(HDESK hDesk);

#endif // !NEW_PROGRAM_PROCESSOR

