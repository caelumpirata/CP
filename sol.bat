@echo off
g++ sol.cpp -o soln.exe -O2 -Wall -Wextra -std=c++20 -pedantic -Wshadow -Wformat=2 -Wfloat-equal -Wconversion -Wlogical-op -Wshift-overflow=2 -Wduplicated-cond -Wcast-qual -Wcast-align -fmax-errors=1
soln.exe && pause
del soln.exe
exit
