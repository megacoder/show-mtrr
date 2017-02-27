PREFIX	=/opt
BINDIR	=${PREFIX}/bin

CC	=gcc -march=native -std=gnu99
CFLAGS	=-Os -D_FORTIFY_SOURCE=2 -Wall -Werror -pedantic
LDFLAGS	=
LDLIBS	=

INSTALL	=install

all::	show-mtrr

check::	show-mtrr
	./show-mtrr ${ARGS}

clean::
	${RM} *.o a.out core.* lint tags

distclean clobber:: clean
	${RM} show-mtrr

install:: show-mtrr
	${INSTALL} -D -c -s show-mtrr ${BINDIR}/show-mtrr

uninstall::
	${RM} ${BINDIR}/show-mtrr
