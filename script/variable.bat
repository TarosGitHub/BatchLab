@echo off

rem # �ϐ�

rem ## set �ϐ���=�l
rem �ϐ��͊��ϐ��Ńv���O�������쒆�͂ǂ�����ł��Q�Ƃł���O���[�o���ȕϐ��ł��B
set var1=10
set var2=hoge

rem `%�ϐ���%`�Œl���Q�Ƃł���B
echo var1=%var1%
echo var2=%var2%

rem `set �ϐ���=`�Ŋ��ϐ����폜�ł���B
set var1=
set var2=

echo var1=%var1%
echo var2=%var2%

echo.

rem ## setlocal����endlocal��
rem setlocal������endlocal���܂ł̊Ԃɏ������ϐ��̓��[�J���ȕϐ��ƂȂ�B
set var3=foo
echo var3=%var3%

setlocal
set var3=bar
echo var3=%var3%
endlocal

echo var3=%var3%

echo.

rem setlocal������endlocal���̒��Őݒ肵���l���O�ɏo�����Ƃ��ł���B
rem �O�ɏo�������ꍇ��`endlocal && set �ϐ���=%�ϐ���%`�Ƃ���B
setlocal
set var4=bar
endlocal && set var4=%var4%

echo var4=%var4%
