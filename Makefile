
TARGET = bsh
CFLAGS = -W -Wall -Werror -pedantic

all: ${TARGET}

${TARGET}: bsh.c
	${CC} ${CFLAGS} ${CPPFLAGS} ${LDFLAGS} $< -o $@

clean:
	rm ${TARGET}

.PHONY: clean
