MIUI patchrom for Nubia Z7 mini
===========

开源说明
----------------

1.开源的代码由suda基于官方v1.20版本适配MIUI V5 kitkat分支的代码

2.如果你对本项目感兴趣或者有什么意见或建议,欢迎联系[510146422@qq.com](mailto:510146422@qq.com)

编译教程
---------------
1.安装Java SDK和Android SDK 附：[AOSP编译环境搭建](https://source.android.com/source/initializing.html) [一键搭建编译环境脚本](https://github.com/TeamRadium/tr-be-script)

2.安装[Git and Repo](https://source.android.com/source/downloading.html)

$ mkdir ~/bin

$ PATH=~/bin:$PATH

$ curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo

$ chmod a+x ~/bin/repo


3.同步代码

$ mkdir MIUI && cd MIUI

$ repo init -u git://github.com/MiCode/patchrom.git -b kitkat

$ repo sync -j4

$ git clone https://github.com/ghbhaha/MIUI_patchrom_NX507J NX507J

4.编译MIUI

$ ./Fullota.sh 4.8.18 （4.8.18为版本号）

5.机型目录下的miui_NX507J_suda_4.8.18_tmw1d8nba7_4.4.2.zip（每次编译生成的不同）即为所得MIUI ROM

感谢
--------
感谢MIUI官方开源patchrom

感谢github上无私奉献代码的朋友

