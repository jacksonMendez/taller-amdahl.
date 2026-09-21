CC = gcc
CFLAGS = -Wall -O2
LDFLAGS = -lm
OMPFLAGS = -fopenmp

SRC_DIR = src
BIN_DIR = bin

all: directories $(BIN_DIR)/primes_seq $(BIN_DIR)/primes_par

directories:
	mkdir -p $(BIN_DIR)

$(BIN_DIR)/primes_seq: $(SRC_DIR)/primes_number_sequential.c
	$(CC) $(CFLAGS) $< -o $@ $(LDFLAGS)

$(BIN_DIR)/primes_par: $(SRC_DIR)/primes_number_parallel.c
	$(CC) $(CFLAGS) $(OMPFLAGS) $< -o $@ $(LDFLAGS)

clean:
	rm -rf $(BIN_DIR) primes_parallel primes_sequential
