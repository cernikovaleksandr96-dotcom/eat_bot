@echo off
chcp 65001 >nul
set "DIR=C:\Users\Alex\Desktop\files\fud"

:: Указываем ваш постоянный адрес ngrok напрямую
set "WEBAPP_URL=https://fretful-humid-strongman.ngrok-free.dev"

echo [1/2] Запускаю постоянный туннель ngrok...
start "Tunnel" cmd /k "ngrok http --url=fretful-humid-strongman.ngrok-free.dev 8000"

echo [2/2] Запускаю бота (на порту 8000)...
start "Bot" cmd /k "cd /d %DIR% && python bot.py"

echo.
echo Готово! Ссылка: %WEBAPP_URL%
echo Отправь боту /start в Telegram.
timeout /t 5 >nul