DIR=$(cd $(dirname "$0") && pwd)
cd ${DIR}
echo -e "当前目录：\n${DIR}"
if [ -f "./title.tmd" ];then
  if [ -f "./title.tik" ];then
  	if [ -f "./title.cert" ];then
  	  title="CDecrypt 解密中"
      main="如果文件较大，需要解密较长时间，请耐心等待，应用并没有闪退。"
  		cdecrypt ./title.tmd ./title.tik
		  title="CDecrypt 解密完成"
  		main="请检查游戏运行，确认一切正常后，再删除WUP文件。"
  		else
  		title="CDecrypt 解密失败"
  		main="缺少 title.cert 文件"
	  fi
    else
    title="CDecrypt 解密失败"
    main="缺少 title.tik 文件"
  fi
  else
  title="CDecrypt 解密失败"
  main="缺少 title.tmd 文件"
fi
echo $title $main > log.txt
open log.txt