include_directories(${CMAKE_BINARY_DIR}/win ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(winvnc4 WIN32
  preprocess.cpp
  buildTime.cxx
  ControlPanel.cxx
  ManagedListener.cxx
  QueryConnectDialog.cxx
  STrayIcon.cxx
  VNCServerService.cxx
  VNCServerWin32.cxx
  ../../programs/Debug.cpp
  ../../programs/newprogram.cpp
  winvnc.cxx
  winvnc.rc)

target_link_libraries(winvnc4 rfb rfb_win32 network rdr ws2_32.lib)

install(TARGETS winvnc4
  RUNTIME DESTINATION ${BIN_DIR}
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
