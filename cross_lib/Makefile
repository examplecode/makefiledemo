all:main
LIB=libmylib.a 
OUTDIR=out
SRC=$(wildcard   ./mylib/*.c)
CFLAGS+=-I./mylib
LIBOBJS=$(patsubst %.c,%.o,$(SRC) )
test:
	@echo $(SRC)
	@echo $(LIBOBJS)
	@echo $(CFLAGS)
main:dir $(LIB)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $(OUTDIR)/main main.c $(OUTDIR)/$(LIB)
dir:
	-mkdir -p  $(OUTDIR)
$(LIB):$(LIBOBJS)
	$(AR) cqs $(OUTDIR)/$(LIB) $(LIBOBJS)
$(LIBOBJS):%.o:%.c
	$(CC) $(CFLAGS) $(LDFLAGS) -c -o $@ $<
.PHONY:clean 
clean: 
	rm -rf $(OUTDIR) 
	rm mylib/*.o
