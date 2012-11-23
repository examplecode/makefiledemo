objects = main.o foo.o bar.o
all:$(objects)
%.o:%.c
	cc -c $< -o $@
clean:
	rm $(objects)


