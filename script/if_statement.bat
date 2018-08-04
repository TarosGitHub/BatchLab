@echo off

rem if 条件 (真のときの処理) else (偽のときの処理)
if 1==1 (
    echo 真の処理
) else (
    echo 偽の処理
)

echo;

rem 処理は複数記述可能
if 1==1 (
    echo 処理は複数記述可能
    echo これは最初の処理です。
    echo これは次の処理です。
)
