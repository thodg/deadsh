
TARGET = deadsh
CFLAGS = -W -Wall -Werror -pedantic

all: ${TARGET}

${TARGET}: deadsh.c
	${CC} ${CFLAGS} ${CPPFLAGS} ${LDFLAGS} $< -o $@

clean:
	rm ${TARGET}

install:
	install -m 0755 ${TARGET} /usr/local/bin

.PHONY: clean
