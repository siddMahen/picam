PHONY: all

all:
	clang main.c -o picture -lm -lpicam -lmmal -lvcos -lbcm_host

clean:
	rm picture
	rm img.jpeg

install:
	cp ./picture /usr/local/bin
