@echo off
color 07
title 更新并整理 GO 模块依赖
:: file-encoding=GBK
rem by iTanken

cd /d %~dp0/../../
echo 1. 更新三方依赖...
cd
::& go get -d -u & echo.

go get github.com/godbus/dbus/v5@latest
go get github.com/godoes/systray@latest
go get github.com/godoes/toast@latest
go get golang.org/x/sys@latest

echo 2. 整理模块依赖...
go mod tidy & echo.

:: echo 3. 导入模块依赖到 vendor 目录...
:: go mod vendor & echo.

git add .

call "%~dp0/done-time-pause.bat"
