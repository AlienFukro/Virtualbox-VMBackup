以下の様にスクリプトを変えてください。
```
cd "C:\Program Files\Oracle\VirtualBox"

VBoxManage controlvm "blackarch" poweroff

SET "YYYYMMDD=%DATE:/=%"

VBOXManage export blackarch -o "D:\Backup\BlackArch\blackarch%date%.ova"
```
