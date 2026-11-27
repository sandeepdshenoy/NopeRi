@echo off
cd /d "D:\Study Materials\Sample-Codes\02-Web-API\NopeRi"
set NO_COLOR=1
set PYTHONIOENCODING=utf-8

if not exist logs mkdir logs
for /f %%d in ('powershell -NoProfile -Command "Get-Date -Format 'dd-MM-yy'"') do set LOG_DATE=%%d
set LOG_FILE=logs\noperi_task_%LOG_DATE%.log

"C:\Users\Sandeep\AppData\Local\Python\pythoncore-3.14-64\python.exe" -X utf8 apply_agent.py >> %LOG_FILE% 2>&1
