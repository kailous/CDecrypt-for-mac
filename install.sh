#!/bin/zsh
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