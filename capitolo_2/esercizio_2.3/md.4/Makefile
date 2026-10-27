CC= gcc
CFLAGS=  -Wall -lm

default: md.4.c
	$(CC) -o md.x md.4.c $(CFLAGS) -O3

debug: md.4.c
	$(CC) -o md.x md.4.c $(CFLAGS) -pg -g

cutoff: md.4.cutoff.c
	$(CC) -o md.cutoff.x md.4.cutoff.c $(CFLAGS) -O3

clean:
	rm -f *.x
