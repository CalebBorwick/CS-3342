cmake_minimum_required(VERSION 3.15)
project(CS_3342_Asn1)

set(CMAKE_CXX_STANDARD 14)

add_executable(CS_3342_Asn1 cmake-build-debug/remove_comments.cpp cmake-build-debug/input_C_source_rem.cpp cmake-build-debug/input_C_source_rem.h input_C_source.cpp input_C_source.h cmake-build-debug/input_C_source_rem.cpp input_C_source_rem.h)