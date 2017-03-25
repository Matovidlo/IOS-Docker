CC=gcc
CPPFLAGS=-pedantic -Wall -Wextra
CFLAGS=-std=c99
LDFLAGS=-L.
EXEPATH= $(shell pwd)

LIBOBJ=proj2.o
.PHONY: all clean

all: proj2 copy

proj2: $(LIBOBJ)
	$(CC) $(CFLAGS) $(CPPFLAGS) proj2.c -o project2
copy:
	cd ../
	cp $(EXEPATH)/project2 ../

clean:
	$(RM) project2 $(LIBOBJ)

