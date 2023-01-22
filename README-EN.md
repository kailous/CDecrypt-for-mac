# CDecrypt for MacOS

[Goto Github](https://github.com/kailous/CDecrypt-for-mac)

----

[简体中文](./README.md) | [English](./README-EN.md)

----

CDecrypt is a Wii U NUS content file decryptor. It can decrypt WUP format game files so that they can be read by CEMU emulator. Originally released only for Windows platform, a MacOS version was specially re-built to facilitate MacOS users. This way, users do not need to use a PC or virtual machine to decrypt game files, saving a lot of trouble.

----

### Install

You can manually download `cdecrypt` and execute it anywhere.
You can also use the following command to automatically install `cdecrypt` in the `/usr/local/bin` directory.
```zsh
BIN="/usr/local/bin"
INSTALL_FILE="https://raw.githubusercontent.com/kailous/CDecrypt-for-mac/main/cdecrypt.tar.gz"
if [ -f "${BIN}/cdecrypt" ]; then
  echo "The installation is already done, no need to install again."
else
  curl -# -o "${BIN}/cdecrypt.tar.gz" "${INSTALL_FILE}"
  cd ${BIN}
  tar -xzf cdecrypt.tar.gz
  echo "Installation successful!"
fi
rm -f ${BIN}/cdecrypt.tar.gz
```

----

### Uninstall
You only need to delete the `cdecrypt` binary executable file. If you installed it using the command above in `/usr/local/bin`, you can also use the following script to uninstall it.
```zsh
BIN="/usr/local/bin"
rm -f ${BIN}/cdecrypt
```

----

### Usage
`cdecrypt` This is a command line tool, which needs to be run in the terminal. If you installed `cdecrypt` using the installation command above, or downloaded it manually and placed it in another directory, and configured the environment variable, then you can directly use the following command to decrypt.

```zsh
#!/bin/zsh
cd <Target File Directory>
cdecrypt ./title.tmd ./title.tik
```
If not, then you can directly drag `cdecrypt` + `./title.tmd and ./title.tik in the target folder` successively to the `Terminal.app` and run it.

----

cdecrypt [Development Build] - Wii U NUS Content File Decrypter
Copyright (c) 2020-2022 VitaSmith, Copyright (c) 2013-2015 crediar
Visit https://github.com/VitaSmith/cdecrypt for official source and downloads.