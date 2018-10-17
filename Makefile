include $(DEVKITARM)/base_tools

ifeq ($(OS),Windows_NT)
EXE := .exe
else
EXE :=
endif


#### Tools ####

SHELL     := /bin/bash -o pipefail
AS        := $(PREFIX)as
CC1       := tools/agbcc/bin/agbcc
CPP       := $(PREFIX)cpp
LD        := $(PREFIX)ld
OBJCOPY   := $(PREFIX)objcopy
SHA1SUM   := sha1sum -c
GBAGFX    := tools/gbagfx/gbagfx
AIF2PCM   := tools/aif2pcm/aif2pcm
MID2AGB   := tools/mid2agb/mid2agb
PREPROC   := tools/preproc/preproc
SCANINC   := tools/scaninc/scaninc
RAMSCRGEN := tools/ramscrgen/ramscrgen

ASFLAGS         := -mcpu=arm7tdmi
override CC1FLAGS += -mthumb-interwork -Wimplicit -Wparentheses -Wunused -Werror -O2 -fhex-asm
CPPFLAGS        := -I tools/agbcc/include -iquote include -nostdinc -undef

#### Files ####

BUILD_NAME = red

ROM := pmd_$(BUILD_NAME).gba
MAP := $(ROM:%.gba=%.map)

BUILD_DIR := build/pmd_$(BUILD_NAME)

C_SOURCES   := $(wildcard src/*.c)
ASM_SOURCES := $(wildcard asm/*.s data/*.s)

C_OBJECTS    := $(addprefix $(BUILD_DIR)/, $(C_SOURCES:%.c=%.o))
ASM_OBJECTS  := $(addprefix $(BUILD_DIR)/, $(ASM_SOURCES:%.s=%.o))
ALL_OBJECTS := $(C_OBJECTS) $(ASM_OBJECTS)

SUBDIRS := $(sort $(dir $(ALL_OBJECTS)))

LIBC   := tools/agbcc/lib/libc.a
LIBGCC := tools/agbcc/lib/libgcc.a

LD_SCRIPT := $(BUILD_DIR)/ld_script.ld

# Special configurations required for lib files
%/src/agb_flash.o   : CC1FLAGS := -O -mthumb-interwork
%/src/agb_flash_1m.o: CC1FLAGS := -O -mthumb-interwork
%/src/agb_flash_mx.o: CC1FLAGS := -O -mthumb-interwork

#### Main Rules ####

ALL_BUILDS := red

# Available targets
.PHONY: all clean tidy

MAKEFLAGS += --no-print-directory
# Secondary expansion is required for dependency variables in object rules.
.SECONDEXPANSION:
# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:

.PRECIOUS: %.1bpp %.4bpp %.8bpp %.gbapal %.lz %.rl %.pcm %.bin


# Create build subdirectories

$(shell mkdir -p $(SUBDIRS))

all: $(ROM)
ifeq ($(COMPARE),1)
	@$(SHA1SUM) $(BUILD_NAME).sha1
endif

clean: tidy
	$(RM) $(ALL_OBJECTS)
tidy:
	$(RM) $(ALL_BUILDS:%=pmd_%{.gba,.elf,.map})
	$(RM) -r build

$(ROM): %.gba: %.elf
	$(OBJCOPY) -O binary --gap-fill 0xFF --pad-to 0xA000000 $< $@

%.elf: $(LD_SCRIPT) $(ALL_OBJECTS) $(LIBC)
	cd $(BUILD_DIR) && $(LD) -T ld_script.ld -Map ../../$(MAP) -o ../../$@ ../../$(LIBC) ../../$(LIBGCC)

$(LD_SCRIPT): ld_script.txt $(BUILD_DIR)/sym_ewram.ld $(BUILD_DIR)/sym_ewram2.ld $(BUILD_DIR)/sym_iwram.ld
	cd $(BUILD_DIR) && sed -e "s#tools/#../../tools/#g" ../../ld_script.txt >ld_script.ld
$(BUILD_DIR)/sym_%.ld: sym_%.txt
	$(CPP) -P $(CPPFLAGS) $< | sed -e "s#tools/#../../tools/#g" > $@

$(C_OBJECTS): $(BUILD_DIR)/%.o: %.c
	@$(CPP) $(CPPFLAGS) $< -o $(BUILD_DIR)/$*.i
	@$(CC1) $(CC1FLAGS) $(BUILD_DIR)/$*.i -o $(BUILD_DIR)/$*.s
	@printf ".text\n\t.align\t2, 0\n" >> $(BUILD_DIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(BUILD_DIR)/$*.s

$(BUILD_DIR)/data/%.o: data/%.s
	$(AS) $(ASFLAGS) $< -o $@

$(BUILD_DIR)/%.o: %.s
	$(AS) $(ASFLAGS) $< -o $@