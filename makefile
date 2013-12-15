CFLAGS := -O3 -ffast-math -Wall

INCLUDE_DIR := ./include
INCLUDE_PATH := -I$(INCLUDE_DIR) -I$(INCLUDE_DIR)/interface/vcos/pthreads -I$(INCLUDE_DIR)/interface/vmcs_host/linux

# requires raspberrypi/userland
INCLUDE_PATH += -I/opt/vc/include

.PHONY: all clean install

all: libpicam.a

clean:
	rm -f *.o libpicam.a

install:
	cp ./src/picam.h /usr/local/include/picam.h
	cp ./include/interface/vcos/pthreads/* /usr/local/include/
	cp ./include/interface/vmcs_host/linux/*.h /usr/local/include/
	cp -R ./include/interface /usr/local/include/interface
	cp  /opt/vc/lib/* /usr/local/lib/
	cp ./libpicam.a /usr/local/lib/libpicam.a
	 

libpicam.a: RaspiCamControl.o picam.o
	$(AR) rcs $@ $^

RaspiCamControl.o:
	$(CC) ./src/RaspiCamControl.c -c $(CFLAGS) $(INCLUDE_PATH)

picam.o:
	$(CC) ./src/picam.c -c $(CFLAGS) $(INCLUDE_PATH)      
