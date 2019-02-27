# For more information about using CMake with Android Studio, read the
# documentation: https://d.android.com/studio/projects/add-native-code.html

cmake_minimum_required(VERSION 3.6.0)

set(OpenCV_DIR "src/sdk/native/jni")
find_package(OpenCV REQUIRED)

# OpenCV_LIBS and OpenCV_INCLUDE_DIRS cmake variables can be used from this point
include_directories(${OpenCV_INCLUDE_DIRS})
