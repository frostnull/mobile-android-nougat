#!/bin/bash

file=$1
openssl x509 -inform DER -in $1 -out cacert.pem
mv cacert.pem 9a5ba575.0
adb root
adb remount
adb push 9a5ba575.0 /sdcard/  
adb shell "mv /sdcard/9a5ba575.0 /system/etc/security/cacerts/ "
adb shell "chmod 644 /system/etc/security/cacerts/9a5ba575.0"
adb reboot
#android nougat doesnt support user supplied certificates
#Copy and paste the above script in the text editor of your choice and save it as the .sh extenstion
#Make it executable by running the below commmand
#chmod +x <filename>.sh
