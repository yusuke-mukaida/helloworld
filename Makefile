# Makefile
include /drive/drive-qnx/make/nvdefs.mk
CFLAGS   := $(NV_PLATFORM_SDK_INC) $(NV_PLATFORM_OPT) $(NV_PLATFORM_CFLAGS) $(NV_PKCS11_INCLUDE)

TARGET = hello_world
SOURCES = hello_world.c

# rule
$(TARGET):
	 $(CC) $(CFLAGS) $(SOURCES) -o $(TARGET)

#clean target
clean:
	rm -f $(TARGET)
