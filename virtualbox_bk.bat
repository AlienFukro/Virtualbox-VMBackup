cd "C:\Program Files\Oracle\VirtualBox"

VBoxManage controlvm "BackupVM Name" poweroff

SET "YYYYMMDD=%DATE:/=%"

VBOXManage export BackupVM Name -o "output ovf export directory"
