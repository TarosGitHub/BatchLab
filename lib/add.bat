@echo off
rem **
rem * 加算する。第1引数と第2引数の数値を加算して、その結果を環境変数RETに代入する。
rem * 正常終了すれば終了ステータスは0。オペランドが数値でない場合は異常終了し、終了
rem * ステータスは-1となる。
rem * 
rem * @param %1 1つ目のオペランド
rem * @param %2 2つ目のオペランド
rem * @return 1つ目のオペランドと2つ目のオペランドの和
rem * @exit 0 正常終了
rem * @exit -1 異常終了。オペランドが数値ではない場合。
rem *
setlocal
set RET=0
set ope1=%~1
set ope2=%~2

rem 1つ目のオペランドが数値かどうか判定する
call %~dp0\isNumeric %ope1%
if not %RET% equ 1 (
    exit /b -1
)

rem 2つ目のオペランドが数値かどうか判定する
call %~dp0\isNumeric %ope2%
if not %RET% equ 1 (
    exit /b -1
)

rem 加算
set /a RET=%ope1%+%ope2%

endlocal && set RET=%RET%
exit /b 0
