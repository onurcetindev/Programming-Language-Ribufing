ribuf: ribufing.l
	lex ribufing.l
	gcc -o ribuf lex.yy.c -ll

clean:
	rm ribufing lex.yy.c

