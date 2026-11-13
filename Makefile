all: unopt opt asm

unopt:
	g++ -O0 -g -fno-omit-frame-pointer -o lab lab.cpp

opt:
	g++ -O3 -march=native -g -fno-omit-frame-pointer -o lab_opt lab.cpp

asm:
	g++ -O0 -S -masm=intel lab.cpp -o lab_unopt.s
	g++ -O3 -march=native -S -masm=intel lab.cpp -o lab_opt.s

clean:
	rm -f lab lab_opt *.s
