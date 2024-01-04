#!/bin/bash

#install package yang di butuhkan
yum update -y
yum upgrade -y
yum install epel-release -y
yum groupinstall 'Xfce' -y
yum install tigervnc-server dbus-x11 -y

#Setup filesnya
#sources dari anlinux
mkdir ~/.vnc
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Yum/Fedora/Xfce4/xstartup --no-check-certificate -P ~/.vnc/
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Yum/Fedora/Xfce4/vncserver-start --no-check-certificate -P /usr/local/bin/
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Yum/Fedora/Xfce4/vncserver-stop --no-check-certificate -P /usr/local/bin/
chmod +x ~/.vnc/xstartup
chmod +x /usr/local/bin/vncserver-start
chmod +x /usr/local/bin/vncserver-stop
cp /usr/local/bin/vncserver-start /bin/
cp /usr/local/bin/vncserver-stop /bin/
echo " "
echo "untuk menjalankan vnc centOS 7 ketik 👉 vncserver-start"
echo " "
echo "Buat Password Untuk vnc nya dulu guys 😁."
echo " "
echo "VNC runing di marih guys 😁 👉 127.0.0.1:5901"
echo " "
echo "Install dulu sebelumnya vnc viewer android lalu masukan address di atas ok!!"
echo " "
echo "Jika connect address nya akan terbuka Xfce4 Desktop Environment CentOS 7"
echo " "
echo " "
echo " "
echo "Untuk command start vnc 👉 vncserver-start"
echo " "
echo " "
echo " "
echo "Untuk mematikan proses vnc 👉 vncserver-stop"
echo " "
echo " "
echo " "

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncserver-start
