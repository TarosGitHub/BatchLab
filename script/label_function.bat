@echo off

rem # ���x���Ɗ֐�
rem bat�t�@�C���ɂ͊֐��͑��݂��Ȃ��B
rem �����call����goto�����g���ă��x���ɃW�����v���邱�ƂŊ֐��Ǝ�����������������B

rem ## goto���ƃ��x��
rem `goto :���x��`�Ƃ��邱�Ƃ�`:���x��`�ɃW�����v�ł���B

echo �s��փW�����v�B
goto :destination
echo ���̕��͎��s����Ȃ�
:destination
echo �����͍s��ł��B

echo;

rem ## call���Ɩ߂�l
rem goto���ł̓��x���ɃW�����v���邾���ŃW�����v���ɖ߂邱�Ƃ͂ł��Ȃ����߂�l���Ԃ��Ȃ��B
rem �W�����v���ɖ߂�A����ɖ߂�l��Ԃ��ɂ�call����exit�����g�p����B
rem �������A���ۂ͖߂�l�͕Ԃ����Ƃ͂ł����A����Ɋ��ϐ�ERRORLEVEL���g�p����B
rem `call :���x��`�Ń��x���i�֐��j�փW�����v���A���x���i�֐��j����`exit /b ���l`�Ƃ����
rem ���ϐ�ERRORLEVEL��exit�Ŏw�肵���u���l�v����������B
rem �Ȃ��A�߂�l��Ԃ��Ȃ��Ă������ꍇ��`exit /b`�Ƃ����L�q����΂悢�B

call :function
echo �߂�l�́u%errorlevel%�v�ł��B 

echo;

rem call���ƈ���
rem call���ł͈������w�肵�A���x���i�֐��j�ɓn�����Ƃ��ł���B
rem call�����ł�`call :���x�� ��1���� [��2���� ...]`�ň������w�肵�A
rem ���x���i�֐��j���ł�`%����`�ň������󂯎��B
rem ��0����(%0)�ɂ̓��x����(:���x��)���i�[����Ă���B
rem ������%1�`%9�܂Ŏg�p�\�ł���B
rem ��0����(%0)�ȊO�̈��������ׂĎ󂯎��ɂ�`%*`�Ƃ���B

call :withArgument arg1 arg2


goto :endProcess

rem �߂�l��Ԃ����x���i�֐��j
:function
exit /b 100

rem �����̎󂯎��
:withArgument
echo %%0�́u%0�v�ł��B
echo %%1�́u%1�v�ł��B
echo %%2�́u%2�v�ł��B
echo %%*�́u%*�v�ł��B
exit /b

:endProcess
