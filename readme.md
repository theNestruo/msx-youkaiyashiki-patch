
# Youkai Yashiki (MSX, Casio, 1986) - Graphics patch

This is a graphical patch for the game _Youkai Yashiki_ (CASIO, 1986), also known as _Ghost House_, for MSX (ROM MD5: `bc ec 9f da c1 21 e3 ee 66 89 46 cd be df 63 cf`).

> Note: This readme file is intended for developers and for those technically inclinded.
>
> Please refer to the [graphics patch readme file](patch/readme.md) for information about the patch itself and how to use.


## Folder structure

* `./bin/` : Tools and related documentation
* `./original/` : The original game ROM image
* `./resources/`
	* `./resources/original/` : Original game graphic assets and related data, extracted for reference purposes
	* `./resources/mockups/` : Preliminary mock-ups by Twitter user **@yazioh**, for reference purposes
	* `./resources/patched/` : The new graphic assets and related data
	* `./resources/reference/` : Original game map and cheats, for reference purposes


## Tools

PNG files can be edited with any graphical tool.

TMX files can be edited using [Tiled](http://www.mapeditor.org/).

PNG files will be converted to binary data by `PNG2MSX` and `PNG2SPR` tools. TMX files will be converted to binary data by `TMX2BIN` tool. All these tools are part of [PCXTOOLS](https://github.com/theNestruo/pcxtools).

`charset@<address>.namtbl[@<address>].png` are used for Tiled integration, and are not converted to binary data.

The assembler used to build the patched game is [tniASM v0.45](http://tniasm.tni.nl/).


## Building process

To build the patch, a `makefile` is provided for your convenience.

Main `makefile` targets reference:

* `(default)`: Builds the main patched ROM image.

* `compile`: Builds all the patched ROM images.

* `patch`: Builds all the patched ROM images and IPS files.

* `disassembly`: Disassembles the original ROM image.

* `verify_annotated`: Verifies the annotated disassembly.


## Disassembly

You can find a partially annotated disassembly of the original game at [original/YoukaiYashiki.annotated.asm](original/YoukaiYashiki.annotated.asm). A command-line Java tool was created _ad hoc_ to assist with the extraction of the data blocks of the room definitions.

You are free to use the annotated disassembly and the data extraction tool for learning purposes, or creating your own patch.


## ROM information

During the reverse engineering of the game, I partially examined the four usual ROM images that exist for this game and their differences:

### ROM CRC: `2faf6e26`

Known as:
- _Yokai Yashiki (1986) (Casio) (J)_ in GoodMSX collection,
- _Youkai Yashiki. Boynight. Haunted House (1986)(Casio)(JP)_ in TOSEC collection, and
- _Youkai Yashiki - Ghost House - Casio (1986) \[GoodMSX\] \[2524\].rom_ in BetterMSX collection.

This seems to be the proper dump of the original game cartridge.

This is the version the patch has been developed for.

### ROM CRC: `2cfc3eba`

Known as:
- _Youkai Yashiki - Ghost House - Casio (1986) \[a\] \[5267\]_ in BetterMSX collection.

This ROM image differs from the proper dump in the presence of an small routine in the reserved area of the cartridge header:

```asm
L4008:  and     0BFh
        ld      e,a
        ld      a,07h
        jp      0093h ; (MSX BIOS' WRTPSG)
```

That routine is called (`call 04008h`) instead of the original routine (`call 0BA49h`):

```asm
LBA49:  ld      e,a
        ld      a,07h
        jr      LBA3D ; (LBA3D: jp 0093h)
```

This changes aims to prevent [unsafe PSG port directions](https://github.com/openMSX/openMSX/issues/1100).

Therefore, according to TOSEC Naming Convention it should not be labelled as _\[a\]_ ("Alternate") but _\[f\]_ ("Fixed"), as it is not "an alternate ORIGINAL version of another ORIGINAL image" but "the original software has been deliberately hacked/altered in some way to 'improve' or fix the image to work in a non-standard way".


### ROM CRC: `8863415a`

Known as:
- _Youkai Yashiki. Boynight. Haunted House (1986)(Casio)(JP)\[b\]_ in TOSEC collection.
- _Youkai Yashiki - Ghost House - Casio (1986) \[b\] \[BadDump\] \[2525\]_ in BetterMSX collection.

This is a pirated version where the CASIO logo has been removed, and the copyright notice has beeen changed to "COPYRIGHT 1986 PROSOFT".

Additionally, this version has been modified to be used with Korean MSX computers. The original game uses the ROM character set, but uses a hardcoded address instead of reading this address from the MSX BIOS' variable `CGTABL`, as this address is usually the same in most MSX computers, but for Korean ones. Using the original game in a Korean MSX will show graphical glitches in any text, while this version will work. For the same reason, using this version in most MSX computers will show similar graphical glitches in texts.

This graphical glitches may have leaded this ROM image to be labelled as _\[b\]_ ("Bad Dump") but, as previously stated, it is not a bad dump but a pirated version that should be labelled as _\[p\]_ ("Pirated").


### ROM CRC: `6e4ca2db`

Known as:
- _Youkai Yashiki - Ghost House - Casio (1986) \[4169\]_ in BetterMSX collection.

This is a pirated version that has been modified to be used with Korean MSX computers, and where the both CASIO logo and the copyright notice have been removed.

According to TOSEC Naming Convention it should be labelled as _\[p\]_ ("Pirated"). Having no qualifier in the name is quite miselading, as the game will show graphical glitches in any text when played in most MSX computers.


## Credits

Original game: **Youkai Yashiki** &copy; 1986 by CASIO

Graphics by [**@yazioh**](http://twitter.com/yazioh). All rights reserved.

Reverse engineering and code patches by [**@NestorSancho**](http://twitter.com/NestorSancho).
