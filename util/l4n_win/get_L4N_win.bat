@echo off

set cwd=%~dp0
mkdir L4N-1804-abis-20200927
cd L4N-1804-abis-20200927

echo Lin4Neuro�̃_�E�����[�h���J�n���܂�
echo �����t�@�C�����_�E�����[�h���܂�
echo.

%cwd%/aria2c -i %cwd%/uris.txt

echo �����t�@�C�����������܂�
copy /B L4N-1804-abis-split-?? L4N-1804-abis-20200927.ova

echo �������܂����BL4N-1804-abis-20200927�̒��ɂ���L4N-1804-abis-20200927.ova ��VirtualBox�ɃC���|�[�g���Ă��������B
echo �����t�@�C�����폜���܂�

del L4N-1804-abis-split*

echo �I�����܂�
exit
