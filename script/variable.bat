@echo off

rem # 変数

rem ## set 変数名=値
rem 変数は環境変数でプログラム動作中はどこからでも参照できるグローバルな変数です。
set var1=10
set var2=hoge

rem `%変数名%`で値を参照できる。
echo var1=%var1%
echo var2=%var2%

rem `set 変数名=`で環境変数を削除できる。
set var1=
set var2=

echo var1=%var1%
echo var2=%var2%

echo.

rem ## setlocal文とendlocal文
rem setlocal文からendlocal文までの間に書いた変数はローカルな変数となる。
set var3=foo
echo var3=%var3%

setlocal
set var3=bar
echo var3=%var3%
endlocal

echo var3=%var3%

echo.

rem setlocal文からendlocal文の中で設定した値を外に出すこともできる。
rem 外に出したい場合は`endlocal && set 変数名=%変数名%`とする。
setlocal
set var4=bar
endlocal && set var4=%var4%

echo var4=%var4%
