ROOT=../..

include $(ROOT)/config.mk

CFLAGS += -D_BSD_SOURCE -D_GNU_SOURCE
DEPS = config.h
OBJS = \
	smdev.o             \
	util/agetcwd.o      \
	util/apathmax.o     \
	util/dev.o          \
	util/eprintf.o      \
	util/estrtol.o      \
	util/mkpath.o       \
	util/recurse.o      \
	util/strlcpy.o

BIN = smdev

include $(ROOT)/mk/bin.mk

config.h:
	@echo creating $@ from config.def.h
	@cp config.def.h $@
