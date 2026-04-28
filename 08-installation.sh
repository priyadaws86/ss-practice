#!/bin/bash
# Installing MYSQL

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo -e "$R Error:: Please run this script with root privilages $N"
    exit 1
fi

VALIDATE(){

    if [ $1 -ne 0 ]; then
        echo -e "$R ERROR: $2 Installation failed $N"
        exit 1
    else
        echo -e "$G $2 Installation successful $N"
    fi
}

dnf install mysql -y

VALIDATE $? "MYSQL"

dnf install nginx -y

VALIDATE $? "NGINX"

dnf install python3 -y

VALIDATE $? "PYTHON3"


