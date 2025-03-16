@echo off
g++ sol.cpp -o sol.exe -O2 -Wall -Wl,--stack=536870912 -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -D_GLIBCXX_DEBUG
sol.exe
del sol.exe
