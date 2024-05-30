CC = gcc
CFLAGS = -Wall -std=c99
TARGET = book_distribution

all: $(TARGET)

$(TARGET): main.o books_div.o data_gen.o rand_bk_gen.o rand_data_gen.o
	$(CC) $(CFLAGS) -o $(TARGET) main.o books_div.o data_gen.o rand_bk_gen.o rand_data_gen.o

main.o: main.c book_distribution.h
	$(CC) $(CFLAGS) -c main.c

books_div.o: books_div.c book_distribution.h
	$(CC) $(CFLAGS) -c books_div.c

data_gen.o: data_gen.c book_distribution.h
	$(CC) $(CFLAGS) -c data_gen.c

rand_bk_gen.o: rand_bk_gen.c book_distribution.h
	$(CC) $(CFLAGS) -c rand_bk_gen.c

rand_data_gen.o: rand_data_gen.c book_distribution.h
	$(CC) $(CFLAGS) -c rand_data_gen.c

clean:
	rm -f *.o $(TARGET)
