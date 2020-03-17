#/bin/bash

#echo "nameserver 8.8.8.8" >> /etc/resolv.conf
#echo "nameserver 168.126.63.1" >> /etc/resolv.conf

yum -y install wget
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

yum -y install epel-release-latest-7.noarch.rpm
yum -y install python-pip
python -m pip install selenium

echo "[google-chrome]" >> /etc/yum.repos.d/google-chrome.repo
echo "name=google-chrome" >> /etc/yum.repos.d/google-chrome.repo
echo "baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64" >> /etc/yum.repos.d/google-chrome.repo
echo "enabled=1" >> /etc/yum.repos.d/google-chrome.repo
echo "gpgcheck=1" >> /etc/yum.repos.d/google-chrome.repo
echo "gpgkey=https://dl.google.com/linux/linux_signing_key.pub" >> /etc/yum.repos.d/google-chrome.repo

yum -y install google-chrome-stable
yum -y install unzip
wget https://chromedriver.storage.googleapis.com/80.0.3987.106/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
mv chromedriver /usr/local/bin

python -m pip install --upgrade pip
python -m pip install pyvirtualdisplay

yum -y install Xvfb

yum -y install ipa-gothic-fonts xorg-x11-fonts-100dpi xorg-x11-fonts-75dpi xorg-x11-fonts-cyrillic xorg-x11-fonts-Type1 xorg-x11-fonts-misc
#yum -y install xorg-x11-utils

