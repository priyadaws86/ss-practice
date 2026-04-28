#!/bin/bash
# Installing MYSQL

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Error:: Please run this script with root privilages"
    exit 1
fi

VALIDATE(){

    if [ $1 -ne 0 ]; then
        echo "ERROR: $2 Installation failed"
        exit 1
    else
        echo "$2 Installation successful"
    fi
}

dnf install mysql -y

VALIDATE $? "MYSQL"

dnf install nginx -y

VALIDATE $? "NGINX"

dnf install python3 -y

VALIDATE $? "PYTHON3"


