objects = main.o foo.o bar.o other.o
myprog: $(objects)
	cc -o myprog $(objects)
main.o:main.c
	cc -c main.c
foo.o:foo.c
	cc -c foo.c
bar.o:bar.c
	cc -c bar.c

include other.mk
clean:
	rm myprog $(objects)

