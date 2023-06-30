all:
	make clean
	mkdir -p ./build
	(\
		cd ./build;\
		gcc -Wall -Wextra ../gdalloc.c ../gdalloc.h -c;\
		cp ../gdalloc.h gdalloc.h\
	)

clean:
	rm -rf ./build


