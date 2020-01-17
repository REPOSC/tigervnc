include_directories(${CMAKE_SOURCE_DIR}/common)
set(TEST_1_SRC
        main.cpp)
set(TEST_2_SRC
        test.cpp)

add_executable(test_1 ${TEST_1_SRC})
add_executable(test_2 ${TEST_2_SRC})

target_link_libraries(test_1 network rdr os ws2_32 rfb)
target_link_libraries(test_2 network rdr os ws2_32 rfb)
