#!/bin/bash
# ABiS FreeSurferチュートリアル用スクリプト
# 2020年12月19日-20日用のLin4Neuroを入手します

#####
# 準備のために使ったコマンド
# split -n 30 -d L4N-1804-abis-20200927.ova L4N-1804-abis-split-
# for f in L4N-1804-abis-split-*; do openssl md5 $f > ${f}.md5; done
# sftp user@ftpsite
# cd psy-neuroimaging/L4N-1804-abis-20200927-split
# put L4N-1804-abis-split-*
#####

#set -x

#cd ~/Downloads
mkdir L4N-1804-abis-20200927
cd L4N-1804-abis-20200927

# variable ################
baseurl="http://www.md.tsukuba.ac.jp/clinical-med/psy-neuroimaging/L4N-1804-abis-20200927-split"
base="L4N-1804-abis-split"
L4N="L4N-1804-abis-20200927.ova"
###########################

echo "チュートリアル用のLin4Neuroをダウンロードします"
echo ""

echo "${L4N}があるか確認します"
if [ ! -e ${L4N} ]; then
  echo "L4N分割データを確認し、なければダウンロードします"
  for n in $(seq -w 00 29);
  do
    if [ ! -e ${base}-${n} ]; then
      curl -O ${baseurl}/${base}-${n}.md5
      curl -O ${baseurl}/${base}-${n}
    fi 
    echo "${base}-${n}のファイルサイズを確認します"
    openssl md5 ${base}-${n} | cmp ${base}-${n}.md5 -
    while [ $? -ne 0 ]; do
      echo "ファイルサイズが一致しません"
      echo "再度ダウンロードします"
      curl -O ${baseurl}/${base}-${n}
      openssl md5 ${base}-${n} | cmp ${base}-${n}.md5 -
    done
  echo "ファイルサイズが一致しました"
  done
fi
    
  echo "${L4N} を生成します"
  cat ${base}-?? > ${L4N}

#Delete temporary files
[ -e L4N-1804-abis-split-00 ] && rm ${base}-*

echo ""
echo "L4Nの準備が完了しました。"
echo "${L4N%.ova}フォルダの中にある${L4N}をVirtualBoxにインポートしてください"
echo "10秒後に終了します"
sleep 10

exit

