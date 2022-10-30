______________________________________________________________________

 Lunar IPS (LIPS) - IPS patch utility for files up to 16 MB
 Version 1.03
 February 2, 2022

 FuSoYa's Niche
 http://fusoya.eludevisibility.org
______________________________________________________________________

 CONTENTS
______________________________________________________________________

 1. Description
 2. Updates
 3. Legal Notice
 4. Contact Information

______________________________________________________________________

 1. Description
______________________________________________________________________


 Lunar IPS (LIPS) is intended as an easy to use, lightweight IPS patch
 utility for windows to replace the SNESTool DOS program.  It can both
 create and apply IPS patches.

 As far as features go, LIPS has:

 -IPS patch creation/application support.
 -full RLE encoding/decoding support.
 -file expanding/truncating support.
 -the IPS encoder creates files that are the same size or smaller
  than files created with SNESTool.
 -the IPS encoder avoids the rare "0x454F46 (EOF) offset bug" that
  SNESTool's IPS encoder has.
 -logging feature for applying IPS patches (ROMFileName.log).
 -registers the ".IPS" file type so that you can just double click on
  an IPS file and choose the file to apply it to for convenience.
 -support for patching files up to 16 MB in size, which is the limit
  of the IPS format.  The files can technically be larger than that,
  but the IPS format cannot record changes beyond the 16 MB mark due
  to 24-bit addressing.  The IPS file itself can be any size.

 When applying a patch, you can right click on the title bar of the
 file choosing dialog for the file to be patched to get a few options
 for dealing with SNES copier headers.  "Add SNES Header" will add a
 0x200 byte copier header to the file before patching if it doesn't
 already have one.  "Remove SNES Header" will remove the copier header
 from the file before patching if it has one.  "Add/Remove SNES
 Header" will add a header if it doesn't have one, or remove the
 header if it already has one... this option is useful in cases where
 you've already tried patching without caring about the header and
 found it didn't work, in which case you can just use this option on a
 fresh copy of the file without having to figure out if you need to
 add or remove a header.

 When creating a patch, you can right click on the title bar of the
 original or modified file choosing dialogs to get options for dealing
 with SNES copier headers.  "Add SNES Header" will add a 0x200 byte
 copier header to both files before creating the patch if they don't
 already have one.  "Remove SNES Header" will remove the copier header
 from both files before creating the patch if they don't already have
 one.

 Note that the logging and file registration options are saved to
 the registry.

 You can also use the program from the command line.  The commands
 available are:
 "Lunar IPS.exe" -CreateIPS "PatchFileName" "OriginalFileName"
                 "ModifiedFileName" [Options]
 "Lunar IPS.exe" -ApplyIPS "PatchFileName" "ApplyToFileName" [Options]

 Arguments with [] are optional.  The options available are:
 -AddSNESHeader
  Adds 0x200 byte SNES copier header to the file to be patched before
  patching, but only if it doesn't already have one.  For creating a
  patch, adds SNES copier headers to both original and modified files
  before creating the patch, but only if they don't already have one.
 -RemoveSNESHeader
  Similar to -AddSNESHeader except it removes the SNES copier header
  from the files, but only if they already have one.

______________________________________________________________________

 2. Updates
______________________________________________________________________


Version 1.03 February 2, 2022

-added "-CreateIPS" and "-ApplyIPS" command line functions.
-added per-monitor V2 DPI awareness for Windows 10 Creators Update
 (1703) and above.
-added 64 bit build of the program, which you can find in the x64
 folder.
-added support for unicode filenames/paths when running on a unicode
 OS.


Version 1.02 June 3, 2010

-added an option to disable registering the .ips file type.
-updated the program to stop always using the Win95 default font and
 make it high-DPI aware.  Should improve readability on LCDs with
 ClearType.


Version 1.01 April 19, 2007

-fixed file association for Windows Vista, which should also fix it
 for non-administrator accounts on Win2k and up.
-very minor tweak to the IPS creation code to shave off a couple bytes


Version 1.00 February 14, 2003

-First Release.


______________________________________________________________________

 3. Legal Notice
______________________________________________________________________

 The Lunar IPS program (hereafter referred to as the "Software") is
 not supported by any commercial entity.

 The Software can be distributed freely for non-commercial use only. 
 No goods, services, or money can be charged for the Software in any
 form, nor may it be bundled as part of another package that is
 commercial in nature.

 The Software is provided AS IS, and its use is at your own risk.
 Anyone mentioned in this document will not be held liable for any
 damages, direct or otherwise, arising from its use or presence.

______________________________________________________________________

 4. Contact Information
______________________________________________________________________


 FuSoYa
   www:   http://fusoya.eludevisibility.org
   ???:   06942508

______________________________________________________________________
