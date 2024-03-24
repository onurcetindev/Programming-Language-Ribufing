scanner: scanner.c scanner.h lex.yy.c
	cc scanner.c lex.yy.c -ll -o scanner

lex.yy.c: ribufing.l
	lex ribufing.l

clean:
	rm scanner
	rm lex.yy.c


