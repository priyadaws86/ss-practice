#!/bin/bash
# Installing MYSQL

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


Logs_Folder="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d '.' -f1)
LOG-FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $Logs_Folder
echo "Script started executed at : $(date)"

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

dnf list installed mysql &>> $LOG-FILE
if [ $? -ne 0 ]; then
     dnf install mysql -y
     VALIDATE $? "MYSQL"
else
    echo -e "MYSQL already installed... $Y SKIPPING $N"
fi

dnf list installed nginx &>> $LOG-FILE
if [ $? -ne 0 ]; then
     dnf install nginx -y
     VALIDATE $? "NGINX"
else
    echo -e "NGINX already installed... $Y SKIPPING $N"
fi

dnf list installed python3 &>> $LOG-FILE
if [ $? -ne 0 ]; then
       dnf install python3 -y
       VALIDATE $? "PYTHON3"

else
    echo -e "PYTHON3 already installed... $Y SKIPPING $N"
fi



