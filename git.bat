@echo off
chcp 65001 > nul

git config user.name "manitux-bot"
git config user.email "manitux.app@gmail.com"

git add .

set /p commit_msg="Enter commit message (Default: Update repo): "
if "%commit_msg%"=="" set commit_msg=update repo

echo [INFO] Commit ...
git commit -m "%commit_msg%"

echo [INFO] (Pull)...
git pull origin main --rebase

echo [INFO] (Push)...
git push origin main

echo.
echo [SUCCESS] ok!
pause
