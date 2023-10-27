# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/tassio/esp/esp-idf/components/bootloader/subproject"
  "/home/tassio/Documents/Esp32-C-code/build/bootloader"
  "/home/tassio/Documents/Esp32-C-code/build/bootloader-prefix"
  "/home/tassio/Documents/Esp32-C-code/build/bootloader-prefix/tmp"
  "/home/tassio/Documents/Esp32-C-code/build/bootloader-prefix/src/bootloader-stamp"
  "/home/tassio/Documents/Esp32-C-code/build/bootloader-prefix/src"
  "/home/tassio/Documents/Esp32-C-code/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/tassio/Documents/Esp32-C-code/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/tassio/Documents/Esp32-C-code/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
