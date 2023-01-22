# CDecrypt for MacOS

[Goto Github](https://github.com/kailous/CDecrypt-for-mac)

----

[简体中文](./README.md) | [English](./README-EN.md)

----

CDecrypt 是一款 Wii U NUS 内容文件解密器。它可以解密 WUP 格式的游戏文件，以便被 CEMU 模拟器读取。原本只在 Windows 平台发行，为了方便 MacOS 用户，特意重新构建了 MacOS 版本。这样，就不需要用 PC 或者虚拟机来解密游戏文件，省去了很多麻烦。

----

### 安装

你可以自己手动把 `cdecrypt` 下载到任意地方手动去执行它。
你也可以使用下面的命令将 `cdecrypt` 自动安装在 `/usr/local/bin` 目录中。
```zsh
BIN="/usr/local/bin"
INSTALL_FILE="https://raw.githubusercontent.com/kailous/CDecrypt-for-mac/main/cdecrypt.tar.gz"
if [ -f "${BIN}/cdecrypt" ]; then
  echo "安装过了，不用重复安装。"
else
  curl -# -o "${BIN}/cdecrypt.tar.gz" "${INSTALL_FILE}"
  cd ${BIN}
  tar -xzf cdecrypt.tar.gz
  echo "安装成功"
fi
rm -f ${BIN}/cdecrypt.tar.gz
```

----

### 卸载
你只需要删除 `cdecrypt` 这个二进制可执行文件即可，如果你使用上面的命令安装在 `/usr/local/bin` 那么你同样可以使用下面的脚本卸载。
```zsh
BIN="/usr/local/bin"
rm -f ${BIN}/cdecrypt
```

----

### 使用 / Usage
`cdecrypt` 这是一个命令行工具，需要在终端运行。如果你使用上面的安装命令安装了 `cdecrypt` ，或者自己手动下载放置在其他目录，并配置好了环境变量。那么你可以直接使用下面的命令进行解密。

```zsh
#!/bin/zsh
cd <目标文件目录>
cdecrypt ./title.tmd ./title.tik
```
如果没有，那么你可以直接将 `cdecrypt` + `目标文件夹内的 ./title.tmd ./title.tik` 依次拖放到 `终端.app` 运行。即可 

----

cdecrypt [开发版] - Wii U NUS 内容文件解密器
版权所有 (c) 2020-2022 VitaSmith，版权所有 (c) 2013-2015 crediar
访问 [https://github.com/VitaSmith/cdecrypt](https://github.com/VitaSmith/cdecrypt) 获取官方来源和下载。