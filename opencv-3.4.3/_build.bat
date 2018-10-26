if not exist build_android mkdir build_android
cd build_android

cmake -G"MinGW Makefiles" -DCMAKE_TOOLCHAIN_FILE=%ANDROID_NDK%/build/cmake/android.toolchain.cmake  -DCMAKE_MAKE_PROGRAM="%ANDROID_NDK%/prebuilt/windows-x86_64/bin/make.exe" -DANDROID_ABI="armeabi-v7a" -DANDROID_STL=c++_static -DCMAKE_BUILD_TYPE=Release -DANDROID_NATIVE_API_LEVEL=android-23 -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DBUILD_ANDROID_EXAMPLES=OFF -DBUILD_JAVA=OFF ..

cmake --build .

pause
