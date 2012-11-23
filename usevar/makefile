objects = main.o foo.o bar.o
myprog: $(objects)
	cc -o myprog $(objects)
main.o:main.c
	cc -c main.c
foo.o:foo.c
	cc -c foo.c
bar.o:bar.c
	cc -c bar.c
clean:
	rm myprog $(objects)

