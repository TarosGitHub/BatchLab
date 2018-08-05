@echo off

set TEST_STATUS=0

rem **
rem * isNumeric�̃e�X�g�B
rem * [����n] ���l�ł���ꍇ
rem *
:isNumericTest_IsNumeric
setlocal
call :beginTest IsNumeric

set num=100
call ..\lib\isNumeric.bat %num%

call :assert %RET% equ 1

call :endTest
endlocal

rem **
rem * isNumeric�̃e�X�g�B
rem * [����n] ���l�łȂ��ꍇ
rem *
:isNumericTest_IsNotNumeric
setlocal
call :beginTest IsNotNumeric

set num=aaa
call ..\lib\isNumeric.bat %num%

call :assert %RET% equ 0

call :endTest
endlocal

exit /b
rem ********** END PROCESS **********

:beginTest
set TEST_ID=%~1
echo --- BGN %TEST_ID% ---
exit /b

:endTest
echo --- END %TEST_ID% ---
exit /b

:assert
if %* (
    echo %TEST_ID%: OK
) else (
    echo %TEST_ID%: NG
)
exit /b
