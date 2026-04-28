#!/bin/bash
# Installing MYSQL

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error:: Please run this script with root privilages"
    exit 1
fi

dnf install mysql -y


if [ $? -ne 0 ]; then
    echo "ERROR: MYSQL Installation failed"
    exit 1
else
    echo "MYSQL Installation successful"
fi


dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "ERROR: NGINX Installation failed"
    exit 1
else
    echo "NGINX Installation successful"
fi
     
dnf install python3 -y

if [ $? -ne 0 ]; then
    echo "ERROR: Python3 Installation failed"
    exit 1
else
    echo "Python3 Installation successful"
fi



