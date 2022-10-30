Youkai Yashiki (MSX, CASIO, 1986) - Graphics patch
==================================================

Version 1.1 (12/07/2021)


Description
-----------

This is a graphical patch for the game "Youkai Yashiki" (CASIO, 1986), also known as "Ghost House", for MSX.

The patch is offered in two flavours:
- JP, with the original items (onigiri, omamori, geta shoes...) and original ending message
- EN, with reworked items (hamburguer, four leaf clover, sneakers...) and translated ending message.

Additionally, a minipatch is provided for those who want to play with enhancements but using the original graphics.


Credits
-------

Graphics by @yazioh (twitter.com/yazioh). All rights reserved.

Reverse engineering and code patches by @NestorSancho (twitter.com/NestorSancho).


License
-------

This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/ or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

This license allows reusers to copy and distribute the material in any medium or format in unadapted form only, for noncommercial purposes only, and only so long as attribution is given to the creator.

CC BY-NC-ND includes the following elements:
- BY: Credit must be given to the creator
- NC: Only noncommercial uses of the work are permitted
- ND: No derivatives or adaptations of the work are permitted

Please note that hacks and/or ports to run the patched game on different platforms than MSX (such as ColecoVision, Sega SG-1000 or Sega Master System) are considered derivative and/or adaptations of the work, and therefore are not permitted by this license.


ROM information
---------------

These patches has been designed to be applied over the following ROM:

- Name: Yokai Yasiki (1986) (Casio) (J).rom
  ROM CRC32: 2FAF6E26
  ROM MD5: BCEC9FDAC121E3EE668946CDBEDF63CF
  ROM SHA-1: 15345C8745028C96FC79036B2E3E180AD2F62DAB

The resulting ROM(s) should match the following checksums:

- JP patched version:
  - ROM CRC32: B7792906
    ROM MD5: 27119794B2A347DFCAB1ABAACEBAFDB2
    ROM SHA-1: 5ED357F4B076255A86F031D3D949490A0A6DA4FB

- EN patched version:
  - ROM CRC32: 924F6AB0
    ROM MD5: 1E714F2F4C66C44922FE3BA42F733B69
    ROM SHA-1: D139F326F3FC88B612974AF83BA27FDDC8557D5E

- Minipatched version:
	- ROM CRC32: 25965716
		ROM MD5: A4CF71BBE4517E105F91AD843758069A
    ROM SHA-1: 385C87ECD600B4D514DAC17146E94580B9700B14


Detailed change list
--------------------

The new graphics comprises:
- New main charset in two variants (JP and EN), and extended to include alphanumeric characters
- New sprite sheet
- New bosses charset

The graphic-related code changes comprises:
- Map definition multiplexed to save bytes
- Room definitions rewritten to use new modes and include new decorations
- Decoration data reorganized to save bytes and include new decorations
- Graphic data reorganized to include alphanumeric characters and allow routine optimizations to save bytes
- Cartridge initialization routine relocated and optimized to save bytes
- Koji (player) and Rika (girl) sprite colors patched
- Blinking scroll item routine patched to preserve CLRTBL data (instead of "flat" FILVRM)
- Floor recoloring routine patched to use alternative CLRTBL data (instead of "flat" FILVRM)
- Y-coordinate of some sprites patched to prevent glitches due the new graphics being taller
- Room decoding routine rewritten with new modes and to allow more compact room definitions to save bytes
- Fire printing routine patched to save bytes
- HUD printing routines patched to save characters
- Tongue monster printing routine patched due the new graphic being 8px taller

Additional code changes (note: the minipatched version only includes these changes):
- Invulnerability cheat simplified (just INS + DEL keys)
- Scroll speed patched (slightly faster)
- WRTPSG routine patched when writing to register 7 for compatibility reasons
- Demon (enemy) routine patched to restore the lost sprite pattern when jumping


Changelog
---------

v1.1 (12/07/2021)

- Fixes an error in the map layout that connected the 5th boss screen with the 4th area.
- Minipatch added.

v1.0 (08/07/2021)

- Initial version.

