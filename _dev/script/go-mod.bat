@echo off
color 07
title ���²����� GO ģ������
:: file-encoding=GBK
rem by iTanken

cd /d %~dp0/../../
echo 1. ������������...
cd
::& go get -d -u & echo.

go get github.com/godbus/dbus/v5@latest
go get github.com/godoes/systray@latest
go get github.com/godoes/toast@latest
go get golang.org/x/sys@latest

echo 2. ����ģ������...
go mod tidy & echo.

:: echo 3. ����ģ�������� vendor Ŀ¼...
:: go mod vendor & echo.

git add .

call "%~dp0/done-time-pause.bat"
