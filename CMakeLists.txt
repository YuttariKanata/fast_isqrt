cmake_minimum_required(VERSION 3.25)
project(fast_isqrt LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# -----------------------------------------------------------------------------
# Compiler Info Output
# -----------------------------------------------------------------------------
message(STATUS "==================================================")
message(STATUS " [Compiler Configuration Summary]")
message(STATUS "   - Compiler ID       : ${CMAKE_CXX_COMPILER_ID}")
message(STATUS "   - Compiler Version  : ${CMAKE_CXX_COMPILER_VERSION}")
message(STATUS "   - Compiler Path     : ${CMAKE_CXX_COMPILER}")
message(STATUS "   - C++ Standard      : C++${CMAKE_CXX_STANDARD}")
message(STATUS "   - Target Platform   : ${CMAKE_SYSTEM_NAME} (${CMAKE_SYSTEM_PROCESSOR})")
message(STATUS "==================================================")

# 1. Header-only ライブラリの定義
add_library(fast_isqrt INTERFACE)
target_include_directories(fast_isqrt INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>
)

option(BUILD_TESTS "Build test executable" ON)
option(BUILD_BENCHMARKS "Build benchmark executable" OFF)

# 2. テストのビルド設定
if(BUILD_TESTS)
    enable_testing()

    set(TEST_TARGETS
        test_fast_isqrt
        test_is_perfect_square
    )

    foreach(target ${TEST_TARGETS})
        add_executable(${target} tests/${target}.cpp)
        target_link_libraries(${target} PRIVATE fast_isqrt)

        if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
            target_compile_options(${target} PRIVATE -Wall -Wextra -O2)
        endif()

        add_test(NAME ${target} COMMAND ${target})
        set_tests_properties(${target} PROPERTIES FORCE_OUTPUT_ON_FAILURE ON)
    endforeach()
endif()

# 3. ベンチマークのビルド設定
if(BUILD_BENCHMARKS)
    add_executable(bench_fast_isqrt benchmarks/bench_CPUclock.cpp)
    target_link_libraries(bench_fast_isqrt PRIVATE fast_isqrt)
    
    if(CMAKE_CXX_COMPILER_ID MATCHES "GNU|Clang")
        target_compile_options(bench_fast_isqrt PRIVATE -O3 -march=native)
    elseif(MSVC)
        target_compile_options(bench_fast_isqrt PRIVATE /O2 /Oi /Ot)
    endif()
endif()