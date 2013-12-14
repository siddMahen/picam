PHONY: all

INCLUDE_DIR := ../../include
INCLUDE_PATH := -I$(INCLUDE_DIR) -I$(INCLUDE_DIR)/interface/vcos/pthreads -I$(INCLUDE_DIR)/interface/vmcs_host/linux
INCLUDE_PATH += -I/opt/vc/include
INCLUDE_PATH += -I../../src

LPATH := -L../..
LPATH += -L/opt/vc/lib

all:
	clang $(INCLUDE_PATH) $(LPATH) main.c -o simple -lm -lpicam -lmmal -lvcos -lbcm_host

clean:
	rm simple
