
#
# tools
#

ASM=tniasm
DEBUGGER=java -jar \games\bin\Emulicious\Emulicious.jar
DISASM=yazd
EMULATOR=cmd /c start
IPS="bin\x64\Lunar IPS.exe"
PNG2MSX=png2msx
PNG2SPR=png2spr
TMX2BIN=tmx2bin

#
# commands
#

COPY=cmd /c copy
MKDIR=cmd /c mkdir
MOVE=cmd /c move
REMOVE=cmd /c del
RENAME=cmd /c ren

#
# paths and file lists
#

ROM=\
	YoukaiYashiki.patched.jp.rom

ROMS=\
	YoukaiYashiki.patched.jp.rom \
	YoukaiYashiki.patched.en.rom \
	YoukaiYashiki.minipatch.rom

IPSS=\
	patch\YoukaiYashiki-GraphicsPatch-EN-v1.1.ips \
	patch\YoukaiYashiki-GraphicsPatch-JP-v1.1.ips \
	patch\YoukaiYashiki-MiniPatch.ips \

SYM=\
	YoukaiYashiki.patched.jp.sym

DATAS=\
	resources\patched\sprites@5800.png.spr \
	resources\patched\charset@6000.en.png.chr \
	resources\patched\charset@6000.en.png.clr \
	resources\patched\charset@6000.jp.png.chr \
	resources\patched\charset@6000.jp.png.clr \
	resources\patched\charset@6088.altclrtbl.png.chr \
	resources\patched\charset@6088.altclrtbl.png.clr \
	resources\patched\bosses\charset@6800.png.chr \
	resources\patched\bosses\charset@6800.png.clr \
	resources\patched\bosses\namtbl@7700.tmx.bin \
	resources\patched\bosses\namtbl@7740.tmx.bin \
	resources\patched\bosses\namtbl@7780.tmx.bin \
	resources\patched\bosses\namtbl@77c0.tmx.bin \
	resources\patched\decoration\namtbl@54cf.tmx.bin \
	resources\patched\decoration\namtbl@5562.tmx.bin \
	resources\patched\decoration\namtbl@559c.tmx.bin \
	resources\patched\decoration\namtbl@55ae.tmx.bin \
	resources\patched\decoration\namtbl@55b2.tmx.bin \
	resources\patched\decoration\namtbl@55cf.tmx.bin \
	resources\patched\decoration\namtbl@55d4.tmx.bin \
	resources\patched\decoration\namtbl@55da.tmx.bin \
	resources\patched\decoration\namtbl@55ea.tmx.bin \
	resources\patched\decoration\namtbl@55f2.tmx.bin \
	resources\patched\decoration\namtbl@561e.tmx.bin \
	resources\patched\decoration\namtbl@5630.tmx.bin \
	resources\patched\decoration\namtbl@5653.tmx.bin \
	resources\patched\decoration\namtbl@565d.tmx.bin \
	resources\patched\decoration\namtbl@5680.tmx.bin \
	resources\patched\decoration\namtbl@5684.tmx.bin \
	resources\patched\decoration\namtbl@5690.tmx.bin \
	resources\patched\decoration\namtbl@9cbc.tmx.bin \
	resources\patched\decoration\namtbl@9cef.tmx.bin \
	resources\patched\decoration\namtbl@extra1.tmx.bin \
	resources\patched\decoration\namtbl@extra2.tmx.bin \
	resources\patched\decoration\namtbl@extra3.tmx.bin \
	resources\patched\decoration\namtbl@extra4.tmx.bin \
	resources\patched\decoration\namtbl@extra5.tmx.bin \
	resources\patched\decoration\namtbl@extra6.tmx.bin \
	resources\patched\decoration\namtbl@extra7.tmx.bin \
	resources\patched\decoration\namtbl@extra8.tmx.bin \
	resources\patched\decoration\namtbl@extra9.tmx.bin \
	resources\patched\decoration\namtbl@extra10.tmx.bin \
	resources\patched\text\namtbl@5695.en.tmx.bin \
	resources\patched\text\namtbl@5695.jp.tmx.bin \
	resources\patched\text\namtbl@a839.en.tmx.bin \
	resources\patched\text\namtbl@a839.jp.tmx.bin \
	resources\patched\text\charset@6700.en.png.chr \
	resources\patched\text\charset@6700.en.png.clr \
	resources\patched\text\charset@6700.jp.png.chr \
	resources\patched\text\charset@6700.jp.png.clr

# default target
default: $(ROM)

#
# phony targets
#

clean:
	$(REMOVE) $(ROMS) $(IPSS)
	$(REMOVE) $(DATAS)
	$(REMOVE) tniasm.sym tniasm.tmp

compile: $(ROMS)

run: runnable
	$(EMULATOR) $(ROM)

debug: debuggable
	$(DEBUGGER) $(ROM)

patch: $(IPSS)

#
# Convenience auxiliary targets
#

disassembly: original\YoukaiYashiki.asm

verify_annotated: original\YoukaiYashiki.annotated.asm
	$(ASM) "original\YoukaiYashiki.annotated.asm" ".\YoukaiYashiki.annotated.rom"
	fc /b "original\YoukaiYashiki.rom" ".\YoukaiYashiki.annotated.rom"
	$(REMOVE) tniasm.sym tniasm.tmp ".\YoukaiYashiki.annotated.rom"

runnable: $(ROM)

debuggable: $(ROM) $(SYM)

$(SYM): tniasm.sym
	$(COPY) $< $@

#
# main targets
#

original\YoukaiYashiki.asm: original\YoukaiYashiki.rom original\YoukaiYashiki.yazd
	$(DISASM) "original\YoukaiYashiki.rom" "original\YoukaiYashiki.asm" @"original\YoukaiYashiki.yazd"
	$(ASM) "original\YoukaiYashiki.asm" ".\YoukaiYashiki.disassembly.rom"
	fc /b "original\YoukaiYashiki.rom" ".\YoukaiYashiki.disassembly.rom"
	$(REMOVE) tniasm.sym tniasm.tmp ".\YoukaiYashiki.disassembly.rom"

YoukaiYashiki.patched.jp.rom: YoukaiYashiki.patched.asm $(DATAS)
	$(ASM) $< $@
	cmd /c findstr /b /i "padding_" tniasm.sym | sort

YoukaiYashiki.patched.en.rom: YoukaiYashiki.patched.en.asm YoukaiYashiki.patched.asm $(DATAS)
	$(ASM) $< $@

YoukaiYashiki.minipatch.rom: YoukaiYashiki.minipatch.asm $(DATAS)
	$(ASM) $< $@

patch\YoukaiYashiki-GraphicsPatch-EN-v1.1.ips: YoukaiYashiki.patched.en.rom original\YoukaiYashiki.rom
	$(IPS) -CreateIPS patch\\YoukaiYashiki-GraphicsPatch-EN-v1.1.ips YoukaiYashiki.patched.en.rom original\\YoukaiYashiki.rom

patch\YoukaiYashiki-GraphicsPatch-JP-v1.1.ips: YoukaiYashiki.patched.jp.rom original\YoukaiYashiki.rom
	$(IPS) -CreateIPS patch\\YoukaiYashiki-GraphicsPatch-JP-v1.1.ips YoukaiYashiki.patched.jp.rom original\\YoukaiYashiki.rom

patch\YoukaiYashiki-MiniPatch.ips: YoukaiYashiki.minipatch.rom original\YoukaiYashiki.rom
	$(IPS) -CreateIPS patch\\YoukaiYashiki-MiniPatch.ips YoukaiYashiki.minipatch.rom original\\YoukaiYashiki.rom


%.png.chr %.png.clr: %.png
	$(PNG2MSX) -il -hl $<

%.altclrtbl.png.clr: %.altclrtbl.png
	$(PNG2MSX) -il -b0 $<

%.png.spr: %.png
	$(PNG2SPR) $<

%.tmx.bin: %.tmx
	$(TMX2BIN) $<
