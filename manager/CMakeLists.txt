include_directories(${CMAKE_SOURCE_DIR}/common)
set(MANAGER_SRC
        test.cpp)

add_executable(manager ${MANAGER_SRC})
target_link_libraries(manager network rdr os ws2_32 rfb)
