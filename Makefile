lib_version = 1.0.1

all:
	make clean
	mkdir -p ./build
	gcc -Wall -Wextra -fpic -c gdalloc.c -o build/libgdalloc.$(lib_version).o
	gcc -Wall -Wextra -shared -o build/libgdalloc.$(lib_version).so build/libgdalloc.$(lib_version).o
	cp gdalloc.h build/gdalloc.h


install:
	rm -rf /usr/lib64/libgdalloc.$(lib_version).so /usr/lib64/libgdalloc.1.so /usr/lib64/libgdalloc.so
	rm -rf /usr/include/gdalloc.h
	cp build/libgdalloc.$(lib_version).so /usr/lib64/libgdalloc.$(lib_version).so
	ln -s /usr/lib64/libgdalloc.$(lib_version).so /usr/lib64/libgdalloc.1.so
	ln -s /usr/lib64/libgdalloc.$(lib_version).so /usr/lib64/libgdalloc.so
	cp build/gdalloc.h /usr/include/gdalloc.h

uninstall:
	rm -rf /usr/lib64/libgdalloc.*
	rm -rf /usr/include/gdalloc.h

clean:
	rm -rf ./build


