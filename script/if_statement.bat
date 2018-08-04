@echo off

rem # if文と条件

set condition=true


rem ## if 文
rem if 条件 (真のときの処理)

if %condition%==true (
    echo 真のときの処理
)

echo;

rem ## if ... else 文
rem if 条件 (真のときの処理) else (偽のときの処理)

if %condition%==true (
    echo 真のときの処理
) else (
    echo 偽のときの処理
)

echo;

rem ## if ... else if 文

if %condition%==false (
    echo 件1が真のときの処理
) else if %condition%==true (
    echo 条件2が真のときの処理
) else (
    echo 上記以外のときの処理
)

echo;

rem ## 処理は複数記述可能
if %condition%==true (
    echo これは最初の処理です。
    echo これは次の処理です。
)
