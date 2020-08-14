cd ./cmake-build-release/
rm -rf CMakeFiles Makefile hellowWorld pointerPointer singleArray vectorArray vectorVector CMakeCache.txt cmake_install.cmake noShuffle  pointerVector singleVector vectorPointer
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build .