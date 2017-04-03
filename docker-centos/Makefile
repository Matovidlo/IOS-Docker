CC=gcc
CPPFLAGS=-pedantic -Wall -Wextra
CFLAGS=-std=c99
LDFLAGS=-L.
EXEPATH= $(shell pwd)

LIBOBJ=proj2.o
.PHONY: all clean

all: proj2 proj2.zip

proj2: $(LIBOBJ)
	$(CC) $(CFLAGS) $(CPPFLAGS) proj2.c -o proj2
#copy:
#	cd ../
#	cp $(EXEPATH)/project2 ../

clean:
	$(RM) proj $(LIBOBJ)

proj2.zip: $(wildcard *.c) $(wildcard *.h) Makefile
	zip $@ $^
