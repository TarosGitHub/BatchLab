@echo off

rem # if���Ə���

set condition=true


rem ## if ��
rem if ���� (�^�̂Ƃ��̏���)

if %condition%==true (
    echo �^�̂Ƃ��̏���
)

echo;

rem ## if ... else ��
rem if ���� (�^�̂Ƃ��̏���) else (�U�̂Ƃ��̏���)

if %condition%==true (
    echo �^�̂Ƃ��̏���
) else (
    echo �U�̂Ƃ��̏���
)

echo;

rem ## if ... else if ��

if %condition%==false (
    echo ��1���^�̂Ƃ��̏���
) else if %condition%==true (
    echo ����2���^�̂Ƃ��̏���
) else (
    echo ��L�ȊO�̂Ƃ��̏���
)

echo;

rem ## �����͕����L�q�\
if %condition%==true (
    echo ����͍ŏ��̏����ł��B
    echo ����͎��̏����ł��B
)
