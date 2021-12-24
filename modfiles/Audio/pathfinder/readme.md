### Preparition
1. ~~Download nw.js first. Extract the files into nwjs folder, or another place and change the path in tool.com, if you prefer.~~

2. Extract mus files from StaticStream.big and place them in [Audio/pathfinder folder](https://github.com/utunnels/ra3pathmusic/tree/main/modfiles/Audio/pathfinder). They are called data\static\cdata\a70bc1d6.9f12cf33.2d97c0ca.6d02956b.cdata and data\static\cdata\a70bc1d6.9f12cf33.240021e2.dca9eaab.cdata, rename the bigger file to track.mus and the smaller file to track-mem.mus, and you are ready to go.
![Image1](https://user-images.githubusercontent.com/4580718/147325725-ae6fe62d-1658-474c-a7f8-928325da501d.png)

### Basic usage
1. Run tool.com, click "Export files", wait for it to complete.

2. To replace a piece of music, convert your music file to wave format and put it in track.mus.files or track-mem.mus.files. For example, 0.wav to replace 0.snr/sns, and so on.

3. Run convert.com, wait for it to complete.

4. Click "Build new mus and mpf files", wait for it to complete.

5. Build your mod using mod sdk and see/listen if it works. SDK settings: build global data

### Advanced usage
1. You can edit events.txt, nodes.txt, and tracks.txt before "Build new mus and mpf files". You may also edit RA3Music.0.h in ra3music folder, if you want to add your own pathmusic event. However, since there are still many unknowns about mpf/mus format, this tool only makes sure you can modify the data, but can't grant the modification work.

2. events.txt: The number used in eventID must match the last 6 numbers defined in RA3Music.0.h, for example, 0xf7413a matches 0x1f7413a. The number following # means track id. There can only be 255 events in this file, or the new mpf file will be corrupted.

3. nodes.txt: The first part contains pathfinder nodes and branches, the second part (starts from [118,92]) contains routers. The routerID of a node matches router index +1, while 0 means no router specified. The index of a node matches file name +1 in track.directory or track-mem.directory, while 0 and -1 have special purposes.

4. tracks.txt: Usually you only need to change startingsample of track-mem.mus, if you want to add new music files to track.mus, otherwise, leave this file alone.
