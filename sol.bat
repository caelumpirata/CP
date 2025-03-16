@echo off
g++ sol.cpp -o sol -O2 -Wall -Wextra -std=c++20 -pedantic -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -fmax-errors=1
sol.exe
del sol.exe
