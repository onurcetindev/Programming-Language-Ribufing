<<<<<<< HEAD
ribuf: ribufing.l
	lex ribufing.l
	gcc -o ribuf lex.yy.c -ll

clean:
	rm ribufing lex.yy.c
=======
scanner: scanner.c scanner.h lex.yy.c
        cc scanner.c lex.yy.c -ll -o scanner

lex.yy.c: ribufing.l
        lex ribufing.l

clean:
        rm scanner
        rm lex.yy.c
>>>>>>> ceb345f25a6519e5a82dd14a5a4c31d95da2d522
