@echo off
rem **
rem * ���Z����B��1�����Ƒ�2�����̐��l�����Z���āA���̌��ʂ����ϐ�RET�ɑ������B
rem * ����I������ΏI���X�e�[�^�X��0�B�I�y�����h�����l�łȂ��ꍇ�ُ͈�I�����A�I��
rem * �X�e�[�^�X��-1�ƂȂ�B
rem * 
rem * @param %1 1�ڂ̃I�y�����h
rem * @param %2 2�ڂ̃I�y�����h
rem * @return 1�ڂ̃I�y�����h��2�ڂ̃I�y�����h�̘a
rem * @exit 0 ����I��
rem * @exit -1 �ُ�I���B�I�y�����h�����l�ł͂Ȃ��ꍇ�B
rem *
setlocal
set RET=0
set ope1=%~1
set ope2=%~2

rem 1�ڂ̃I�y�����h�����l���ǂ������肷��
call %~dp0\isNumeric %ope1%
if not %RET% equ 1 (
    exit /b -1
)

rem 2�ڂ̃I�y�����h�����l���ǂ������肷��
call %~dp0\isNumeric %ope2%
if not %RET% equ 1 (
    exit /b -1
)

rem ���Z
set /a RET=%ope1%+%ope2%

endlocal && set RET=%RET%
exit /b 0
