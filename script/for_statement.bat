@echo off

rem # for文

rem ## for /l %%1文字の変数 in (初期値, 増分, 終了値) do (処理)
for /l %%i in (0, 1, 4) do (
    echo %%i
)
