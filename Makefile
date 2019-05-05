ifeq ($(ARCH), arm)
	CC = ~/Downloads/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-gcc
else
	CC = ~/Downloads/gcc-arm-8.3-2019.03-x86_64-aarch64-elf/bin/aarch64-elf-gcc
endif
CFLAGS += -fpic -ffreestanding -mcpu=cortex-a53 -Wall -Wextra -O2 
LINK_SCRIPT = linker.ld
LDFLAGS = -T$(LINK_SCRIPT) -nostdlib -ffreestanding -O2
BUILD_DIR = build

SRCS = $(wildcard *.c)
SRCS += $(wildcard *.S)
OBJS = $(patsubst %.c, %.o, \
	   $(patsubst %.S, %.o, $(SRCS)))
BUILD_OBJS = $(OBJS:%=$(BUILD_DIR)/%)
DEPS = $(OBJS:.o:.d)
BINS = myos.elf

.PHONY : all clean
all : $(BUILD_DIR) $(BUILD_DIR)/$(BINS)
	@echo "**All Done"

$(BUILD_DIR) : 
	@echo "**Creating build directory"
	@mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/$(BINS) : $(BUILD_OBJS) 
	@echo "**Linking $@"
	$(CC) $(LDFLAGS) $^ -o $@

$(BUILD_DIR)/%.o : %.c
	@echo "Compiling $@"
	$(CC) -MMD -MP $(CFLAGS) -c $< -o $@
$(BUILD_DIR)/%.o : %.S
	@echo "Compiling $@"
	$(CC) -MMD -MP $(CFLAGS) -c $< -o $@

clean :
	@echo "**Cleaning up..."
	rm -rf $(BUILD_DIR)/*

ifeq ($(findstring clean, $(MAKECMDGOALS)),)
-include $(DEPS) 
endif

