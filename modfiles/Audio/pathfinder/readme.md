[English](#preparition) | [中文]()

### Preparition
1. ~~Download nw.js first. Extract the files into nwjs folder, or another place and change the path in tool.cmd, if you prefer.~~

2. Extract mus files from StaticStream.big and place them in [Audio/pathfinder folder](https://github.com/utunnels/ra3pathmusic/tree/main/modfiles/Audio/pathfinder). They are called data\static\cdata\a70bc1d6.9f12cf33.2d97c0ca.6d02956b.cdata and data\static\cdata\a70bc1d6.9f12cf33.240021e2.dca9eaab.cdata, rename the bigger file to track.mus and the smaller file to track-mem.mus, and you are ready to go.
![Image1](https://user-images.githubusercontent.com/4580718/147325725-ae6fe62d-1658-474c-a7f8-928325da501d.png)

### Basic usage
1. Run tool.cmd, click "Export files", wait for it to complete.

2. To replace a piece of music, convert your music file to wave format and put it in track.mus.files or track-mem.mus.files. For example, 0.wav to replace 0.snr/sns, and so on.

3. Run convert.cmd, wait for it to complete.

4. Click "Build new mus and mpf files", wait for it to complete.

5. Build your mod using mod sdk and see/listen if it works. SDK settings: build global data

### Advanced usage
1. You can edit events.txt, nodes.txt, and tracks.txt before "Build new mus and mpf files". You may also edit RA3Music.0.h in ra3music folder, if you want to add your own pathmusic event. However, since there are still many unknowns about mpf/mus format, this tool only makes sure you can modify the data, but can't grant the modification work.

2. events.txt: The number used in eventID must match the last 6 numbers defined in RA3Music.0.h, for example, 0xf7413a matches 0x1f7413a. The number following # means track id. There can only be 255 events in this file, or the new mpf file will be corrupted.

3. nodes.txt: The first part contains pathfinder nodes and branches, the second part (starts from [118,92]) contains routers. The routerID of a node matches router index +1, while 0 means no router specified. The index of a node matches file name +1 in track.directory or track-mem.directory, while 0 and -1 have special purposes.

4. tracks.txt: Usually you only need to change startingsample of track-mem.mus, if you want to add new music files to track.mus, otherwise, leave this file alone.

-------------------------------------------------

### 准备工作
1. ~~下载nw.js解压到nwjs文件夹~~

2. 从StaticStream.big提取mus文件，放到[Audio/pathfinder folder](https://github.com/utunnels/ra3pathmusic/tree/main/modfiles/Audio/pathfinder)文件夹。两个mus文件分别叫做data\static\cdata\a70bc1d6.9f12cf33.2d97c0ca.6d02956b.cdata和data\static\cdata\a70bc1d6.9f12cf33.240021e2.dca9eaab.cdata，把较大的那个命名为track.mus，另外一个命名为track-mem.mus即可。
![Image1](https://user-images.githubusercontent.com/4580718/147325725-ae6fe62d-1658-474c-a7f8-928325da501d.png)

### 基本使用
1. 运行tool.cmd，第一次运行请点击“重新导出数据”按钮导出数据，等待完成。

2. 把需要替换音乐转换成wave格式，放进track.mus.files或者track-mem.mus.files文件夹。比如，0.wav替换0.snr/sns，以此类推。原版的音乐可以用Bibber的工具导出资源试听，常做mod的应该知道工具如何使用，这里就不写了。

3. 运行convert.cmd，等待完成。

4. 点击“创建新的MUS和MPF文件”，等待完成。

5. 现在可以用sdk编译这个mod了，进游戏听一下是否替换成功。

### 高级功能
1. 在“创建新的MUS和MPF文件”之前，你可以编辑events.txt、nodes.txt以及tracks.txt。ra3music下的RA3Music.0.h也可以编辑，如果你需要体检新的event到events.txt，不过，mpf格式并没有被研究透彻，本工具只能确保所有数据可修改，不能保证所有的改动都是正确的，注意备份。

2. events.txt：eventID后面的数字必须和RA3Music.0.h里的数字的后六位对应，比如，0xf7413a对应0x1f7413a。井号后面的数字是trackID，0代表track.mus，1代表track-mem.mus。mpf文件只能容纳255个event，超过这个数字之后会导致文件损坏。

3. nodes.txt：前半部分是node和branch，即节点和分支，后半部分（从[118,92]开始）是router，节点路径。node的routerID等于router的index+1，0有特殊用途。node的index对应音乐文件名编号+1，0和-1有特殊用途。注意，bibber的工具导出的音乐文件名是从1开始的，直接对应node的index，不要和本工具混淆。

4. tracks.txt：通常你不需要改动这个文件，除非你在track.mus的最后添加了新的音乐，需要修改track-mem.mus的startingsample为track.mus的总文件数。
