@echo off

set TEST_STATUS=0

rem **
rem * isNumericのテスト。
rem * [正常系] 数値である場合
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
rem * isNumericのテスト。
rem * [正常系] 数値でない場合
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
