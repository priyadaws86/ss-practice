#!/bin/bash
# Installing MYSQL

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root privilages"
fi

dnf install mysql -y


if [ $? -ne 0 ]; then
    echo "ERROR: Installation failed"
else
    echo "Installation successful"
fi
