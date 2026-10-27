CC= gcc
CFLAGS=  -Wall -lm -O3

default: md.3.c
	$(CC) -o md.x md.3.c $(CFLAGS)

COM_free: md.3_COM_free.c
	$(CC) -o md_COM_free.x md.3_COM_free.c $(CFLAGS)
	
clean:
	rm -f *.x
