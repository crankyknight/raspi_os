ifeq ($(ARCH), arm)
	CC_BASE = ~/Downloads/gcc-arm-none-eabi-8-2018-q4-major/bin/arm-none-eabi-
else
	CC_BASE = ~/Downloads/gcc-arm-8.3-2019.03-x86_64-aarch64-elf/bin/aarch64-elf-
endif

BINS = raspios.elf
CC = $(CC_BASE)gcc
OBJDUMP = $(CC_BASE)objdump

CFLAGS += -fPIC -ffreestanding -mcpu=cortex-a53 -mgeneral-regs-only -Wall -Wextra\
		  -ffunction-sections -fdata-sections
DISAS_FLAGS = -h -D
ifeq ($(DB), 1)
	CFLAGS += -g3
else
	CFLAGS += -O2
endif

LINK_SCRIPT = linker.ld
LDFLAGS = -T$(LINK_SCRIPT) -Wl,-Map=$(BUILD_DIR)/$(BINS:.elf=.map) \
			-Wl,--gc-sections\
			-nostartfiles -nostdlib -ffreestanding
BUILD_DIR = build

#Add sources here
SRC_DIRS := src/kernel_main.c src/init src/mm src/peri src/utils

#INC_DIRS := $(SRC_DIRS:src%=include%)
CFLAGS += -Iinclude
SRCS := $(shell find $(SRC_DIRS) -regex ".*\.\(c\|S\)")
OBJS := $(addprefix $(BUILD_DIR)/, \
		$(notdir $(patsubst %.c, %.o, $(patsubst %.S, %.o, $(SRCS))))) 
DEPS = $(OBJS:.o:.d)
ASM_FILE = $(BINS:.elf=.asm)
SIM = ~/Downloads/qemu-2.12.1/aarch64-softmmu/qemu-system-aarch64

#Enable Second expansion(for function call in prerequisite)
.SECONDEXPANSION:

get-src = $(filter %$(1).c %$(1).S,$(SRCS))

.PHONY : all clean
all : $(BUILD_DIR) $(BUILD_DIR)/$(BINS)
	@echo "**All Done"

$(BUILD_DIR) : 
	@echo "**Creating build directory"
	@echo "$(SRCS) $(OBJS)"
	@mkdir -p $(BUILD_DIR)

$(BUILD_DIR)/$(BINS) : $(OBJS) 
	@echo "**Linking $@"
	$(CC) $(LDFLAGS) $^ -o $@
	$(OBJDUMP) $(DISAS_FLAGS) -S $@ > $(BUILD_DIR)/$(ASM_FILE) 

$(BUILD_DIR)/%.o : $$(call get-src,%)
	@echo "Compiling $@ $^"
	$(CC) -MMD -MP $(CFLAGS) -g3 -c $< -o $@

sim :
	cd $(BUILD_DIR) && $(SIM) -m 256 -M raspi3 -serial null -serial stdio -kernel $(BINS) 
sim_db :
	cd $(BUILD_DIR) && $(SIM) -m 256 -s -S -M raspi3 -serial null -serial stdio -kernel $(BINS) 

clean :
	@echo "**Cleaning up..."
	rm -rf $(BUILD_DIR)/*

ifeq ($(findstring clean, $(MAKECMDGOALS)),)
-include $(DEPS) 
endif

