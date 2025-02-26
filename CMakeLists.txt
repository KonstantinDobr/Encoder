cmake_minimum_required(VERSION 3.26)
project(Hafman)

set(CMAKE_CXX_STANDARD 17)

add_executable(Hafman main.cpp
        generator.h
        encoder.h)
