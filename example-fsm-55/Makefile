# Makefile for Hacker Emblem application of Chopstx

PROJECT = hacker-emblem

CHOPSTX = ..
LDSCRIPT= hacker-emblem.ld
CSRC = sys.c hacker-emblem.c

###################################
CROSS = arm-none-eabi-
CC   = $(CROSS)gcc
LD   = $(CROSS)gcc
GDB  = $(CROSS)gdb
OBJCOPY   = $(CROSS)objcopy

MCU   = cortex-m0 # -save-temps
CWARN = -Wall -Wextra -Wstrict-prototypes
DEFS  = -DHAVE_SYS_H -DFREE_STANDING -DMHZ=48 -DUSE_WFI_FOR_IDLE
OPT   = -O3 -Os -g
LIBS  =

####################
include ../rules.mk

board.h:
	@echo Please make a symbolic link \'board.h\' to a file in ../board;
	@exit 1

openocd.cfg:
	@echo Please make a symbolic link \'openocd.cfg\' to a file in ../board;
	@exit 1

sys.c: board.h

distclean: clean
	rm -f board.h
