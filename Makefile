bin = z80_tests
src = $(wildcard *.c)
obj = $(src:.c=.o)
CFLAGS = -g -Wall -Wextra -O2 -std=c99 -pedantic -DZ80_USE_CYC_GLOBAL_COUNTER
LDFLAGS =

.PHONY: all clean

all: $(bin)

$(bin): $(obj)
	$(CC) -o $@ $^ $(LDFLAGS)

clean:
	-rm $(bin) $(obj)
