cd "C:\Program Files\Oracle\VirtualBox"

VBoxManage controlvm "kali-linux-2024.1-virtualbox-amd64" poweroff

SET YYYYMMDD=%DATE:/=% 

VBOXManage export kali-linux-2024.1-virtualbox-amd64 -o "D:\OVF\kali\kali-linux-2024.1-virtualbox-amd64_%YYYYMMDD%.ova"

VBoxManage startvm "kali-linux-2024.1-virtualbox-amd64"