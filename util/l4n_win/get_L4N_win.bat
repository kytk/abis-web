@echo off

set cwd=%~dp0
mkdir L4N-1804-abis-20200927
cd L4N-1804-abis-20200927

echo Lin4Neuroのダウンロードを開始します
echo 分割ファイルをダウンロードします
echo.

%cwd%/aria2c -i %cwd%/uris.txt

echo 分割ファイルを結合します
copy /B L4N-1804-abis-split-?? L4N-1804-abis-20200927.ova

echo 完了しました。L4N-1804-abis-20200927の中にあるL4N-1804-abis-20200927.ova をVirtualBoxにインポートしてください。
echo 分割ファイルを削除します

del L4N-1804-abis-split*

echo 終了します
exit
