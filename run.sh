#! /bin/bash
echo This is a test to compile a c++ in a GCC7 pulling a project from GitHub
git clone git://github.com/llounsbury/dockertesting
gcc-7 /dockertesting/hello.cpp -lstdc++ -o hello
echo File is compiled!
/hello