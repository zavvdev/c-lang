# Mac OS X on Apple Silicon (M1) - ARM64

run:
	gcc main.c -o main && ./main

compile:
	gcc main.c -c -o main.o

link:
	ld main.o -o main -l System -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _main -arch arm64
