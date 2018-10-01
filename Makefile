a.o: fbex.asm
	nasm -felf64 -g -F dwarf fbex.asm -o a.o

a: a.o
	ld -o a a.o

.PHONY: run
run: a
	./a

.PHONY: clean
clean:
	rm a.o a
