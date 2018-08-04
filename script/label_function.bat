@echo off

rem # ラベルと関数
rem batファイルには関数は存在しない。
rem 代わりにcall文とgoto文を使ってラベルにジャンプすることで関数と似た処理を実現する。

rem ## goto文とラベル
rem `goto :ラベル`とすることで`:ラベル`にジャンプできる。

echo 行先へジャンプ。
goto :destination
echo この文は実行されない
:destination
echo ここは行先です。

echo;

rem ## call文と戻り値
rem goto文ではラベルにジャンプするだけでジャンプ元に戻ることはできないし戻り値も返せない。
rem ジャンプ元に戻り、さらに戻り値を返すにはcall文とexit文を使用する。
rem ただし、実際は戻り値は返すことはできず、代わりに環境変数ERRORLEVELを使用する。
rem `call :ラベル`でラベル（関数）へジャンプし、ラベル（関数）側で`exit /b 数値`とすると
rem 環境変数ERRORLEVELにexitで指定した「数値」が代入される。
rem なお、戻り値を返さなくてもいい場合は`exit /b`とだけ記述すればよい。

call :function
echo 戻り値は「%errorlevel%」です。 

echo;

rem call文と引数
rem call文では引数を指定し、ラベル（関数）に渡すことができる。
rem call文側では`call :ラベル 第1引数 [第2引数 ...]`で引数を指定し、
rem ラベル（関数）側では`%数字`で引数を受け取る。
rem 第0引数(%0)にはラベル名(:ラベル)が格納されている。
rem 引数は%1～%9まで使用可能である。
rem 第0引数(%0)以外の引数をすべて受け取るには`%*`とする。

call :withArgument arg1 arg2


goto :endProcess

rem 戻り値を返すラベル（関数）
:function
exit /b 100

rem 引数の受け取り
:withArgument
echo %%0は「%0」です。
echo %%1は「%1」です。
echo %%2は「%2」です。
echo %%*は「%*」です。
exit /b

:endProcess
