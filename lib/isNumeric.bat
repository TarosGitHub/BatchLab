@echo off
rem **
rem * ���l���ǂ������肷��B��1�����𐔒l���ǂ������肵�āA���̌��ʂ����ϐ�RET�ɑ������B
rem * ���l�ł���ꍇ��1�A���l�łȂ��ꍇ��0����������B���̏����̏I���X�e�[�^�X�͏��0�ł���B
rem *
rem * @param %1 ���l���ǂ������肷��l
rem * @return ���l�ł���ꍇ1�A���l�łȂ��ꍇ0
rem * @exit 0 ����I��
rem *
setlocal
set RET=0

echo %~1| findstr /x /r "^[+-]*[0-9]*[\.]*[0-9]*$" 1>nul

if %ERRORLEVEL% equ 0 (
    set RET=1
)
endlocal && set RET=%RET%
exit /b 0
