#!/bin/bash


echo "Aranılan kullanıcıyı yazın:"
read kullanici
touch /home/kali/Desktop sifreler.txt #şifre klasörü
cat /etc/passwd | grep $kullanici > sifreler.txt
veri=`cat /home/kali/Desktop/Scripting/sifreler.txt`
isim=`awk -F: '{print $1}' /home/kali/Desktop/Scripting/sifreler.txt`
sifre=`awk -F: '{print $2}' /home/kali/Desktop/Scripting/sifreler.txt`
UserID=`awk -F: '{print $3}' /home/kali/Desktop/Scripting/sifreler.txt`
GroupID=`awk -F: '{print $4}' /home/kali/Desktop/Scripting/sifreler.txt`
UIDinfo=`awk -F: '{print $5}' /home/kali/Desktop/Scripting/sifreler.txt`
Home_directory=`awk -F: '{print $6}' /home/kali/Desktop/Scripting/sifreler.txt`
command_shell=`awk -F: '{print $7}' /home/kali/Desktop/Scripting/sifreler.txt`

echo "Tüm bilgiler burada: $veri"
echo "İsim burada: $isim"
echo "Şifre burada(eğer x ise saklanmıştır): $sifre"
echo "User ID burada: $UserID"
echo "Group ID burada: $GroupID"
echo "UID bilgisi burada: $UIDinfo"
echo "Home dizini burada: $Home_directory"
echo "Shell burada: $command_shell"	


