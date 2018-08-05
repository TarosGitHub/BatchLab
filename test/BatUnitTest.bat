@echo off

set TEST_STATUS=null
set TEST_ID=null

goto :%~1

exit \b
rem ********** END PROCESS **********

:assert
if %* (
    echo %TEST_ID%: OK
) else (
    echo %TEST_ID%: NG
)
exit /b
