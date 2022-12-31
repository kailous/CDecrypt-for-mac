# CDecrypt for MacOS

CDecrypt 是一款 Wii U NUS 内容文件解密器。它可以解密 WUP 格式的游戏文件，以便被 CEMU 模拟器读取。原本只在 Windows 平台发行，为了方便 MacOS 用户，特意重新构建了 MacOS 版本。这样，就不需要用 PC 或者虚拟机来解密游戏文件，省去了很多麻烦。

它是一个命令行工具，需要使用脚本运行。Windows 平台有 Bat 脚本，可以直接双击运行。但是，MacOS 有较高的安全性，无法直接执行脚本。为了方便，我将脚本制作成了快捷指令 App 。并合主程序一起打包在 DMG 镜像中，你无需复制到 应用程序 文件夹，只要在镜像中直接运行即可。

CDecrypt is a Wii U NUS content file decrypter. It can decrypt WUP-format game files for CEMU emulator to read. Originally released on Windows, a special MacOS version was built to make it easier for MacOS users and to avoid the hassle of using a PC or virtual machine to decrypt game files.

It is a command line tool and needs to be run with a script. Windows platform has a .bat script which can be run by double-clicking. However, MacOS has higher security and can not directly execute the script. To make it easier, I have created a shortcut command app for it. It is packaged in a DMG image together with the main program, so you don't need to copy it to the Applications folder, you can just run it directly in the image.

## 快捷指令App使用 / Quick Command App Usage：

### 安装 / Install

- 载入 [ CDecrypt for mac.dmg ] 镜像

  Mount the [ CDecrypt for mac.dmg ] image

- 运行 [ CDecrypt for MacOS Setup.app ] 选择 [ 安装 / Install ]

  Run [ CDecrypt for MacOS Setup.app ] Select [ 安装 / Install ]


### 使用 / Usage

- 运行 [ Run.app ]

  Run [ Run.app ]

- 选择 < 目标文件夹 > 后确认

  Select <Destination Folder> and confirm

- 等待解密完成，如果文件较大，等待的时间也会很长。解密过程是后台静默运行的，并不是闪退，请耐心等待完成。

  Wait for the decryption to be completed. If the file is large, the wait time may be long. The decryption process runs in the background silently and does not crash, please wait patiently for it to be completed.


### 卸载 / Uninstall

- 载入 [ CDecrypt for mac.dmg ] 镜像

  Mount the [ CDecrypt for mac.dmg ] image

- 运行 [ CDecrypt for MacOS Setup.app ] 选择 [ 卸载 / Uninstall ]

  Run [ CDecrypt for MacOS Setup.app ] Select [ 卸载 / Uninstall ]


---

## 手动命令行 / Manual command line：

<aside>
💡 技术水平有限，app的体验并不是很好，无法查看运行过程。仅提供了关键文件缺失的报错提示。中间如果意料之外出错无法查明原因。只推荐给不会使用命令行的小伙伴，有点动手能力的小伙伴，更建议使用手动的方式。
</aside>

### 安装 / Install

载入 [ CDecrypt for mac.dmg ] 镜像

```bash
#!/bin/zsh
cd "/Volumes/CDecrypt for mac/"
cp ./cdecrypt /usr/local/bin
```

### 使用 / Usage

```bash
#!/bin/zsh
cd <目标文件目录>
cdecrypt ./title.tmd ./title.tik
```

### 卸载 / Uninstall

```bash
#!/bin/zsh
rm /usr/local/bin/cdecrypt
```

---

cdecrypt [开发版] - Wii U NUS 内容文件解密器
版权所有 (c) 2020-2022 VitaSmith，版权所有 (c) 2013-2015 crediar
访问 [https://github.com/VitaSmith/cdecrypt](https://github.com/VitaSmith/cdecrypt) 获取官方来源和下载。

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation; either version 3 of the License or any later version.
