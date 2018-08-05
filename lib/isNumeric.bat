@echo off
rem **
rem * 数値かどうか判定する。第1引数を数値かどうか判定して、その結果を環境変数RETに代入する。
rem * 数値である場合は1、数値でない場合は0が代入される。この処理の終了ステータスは常に0である。
rem *
rem * @param %1 数値かどうか判定する値
rem * @return 数値である場合1、数値でない場合0
rem * @exit 0 正常終了
rem *
setlocal
set RET=0

echo %~1| findstr /x /r "^[+-]*[0-9]*[\.]*[0-9]*$" 1>nul

if %ERRORLEVEL% equ 0 (
    set RET=1
)
endlocal && set RET=%RET%
exit /b 0
