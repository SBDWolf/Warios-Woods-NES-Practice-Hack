# Warios-Woods-NES-Practice-Hack
A Speedrunning Practice Hack of the NES Wario's Woods

Features:

Every change has to do with the stage select menu that can be pulled up by pressing Select after clearing a board.

- The stage select can now be pulled up after every stage, regardless of whether its current set has been beaten or not.
- The stage select now allows selecting every stage 1-104, regardless of how many stages have been beaten. Selecting stage 00 will send you to stage 256.
- More accurate stage selection: press up/down while hovering over a stage to change the stage by one unit.
- Control over the Board layout: every stage has 2 potential starting layouts. While in the stage select screen, press B to flip the layout between 0 and 1.
- Control over the bomb counter: this game keeps track of how many bombs have dropped throughout the whole game; this counter will control the color of the next bombs. While in the stage select screen, Hold Start, then press up/down to increment or decrement this bomb counter.

Known issues:
- Pressing up/down while hovering over stage 100 will glitch up its graphic. Loading the selected stage will still work fine, however.
- This hack probably breaks... something. The new code has been placed over something that is \*probably\* not actually free space, so \*something\* has \*probably\* been overwritten. I have no idea what that something is though :)

Build instructions:

The rom is to be assembled using Asar.
I use a the make.bat file to assemble (sorry non-windows users!). Place the rom to be patched inside the source folder with the name "source.nes", then run make.bat. The output rom will be created in the /output directory.
Asar is included in the /tools directory.
