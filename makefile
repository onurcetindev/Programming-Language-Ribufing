
ribuf: ribufing.l
	lex ribufing.l
	gcc -o ribuf lex.yy.c -ll

clean:
	rm ribufing lex.yy.c
=======
scanner: scanner.c scanner.h lex.yy.c
        cc scanner.c lex.yy.c -ll -o scanner

