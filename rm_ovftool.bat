@echo off

:: PowerShellを使って本日の日付を取得し、4日前の日付を計算する
for /f %%i in ('powershell -command "(Get-Date).AddDays(-4).ToString('yyyyMMdd')"') do set fourDaysAgo=%%i

:: ファイル名の一部を取得
set filenamePattern=kali*%fourDaysAgo%*.ova

:: ファイルが存在する場合は削除する
for %%f in ("D:\OVF\kali\%filenamePattern%") do (
    if exist "%%~ff" (
        del "%%~ff"
        echo Deleted: %%~ff
    ) else (
        echo File not found: %%~ff
    )
)

