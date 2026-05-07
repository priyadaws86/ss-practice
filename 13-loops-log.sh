#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "Script started executed at : $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo -e "$R Error:: Please run this script with root privilages $N"
    exit 1
fi  

VALIDATE(){

    if [ $1 -ne 0 ]; then
        echo -e "$R ERROR: $2 Installation failed $N" | tee -a $LOG_FILE
        exit 1
    else
        echo -e "$G $2 Installation successful $N" | tee -a $LOG_FILE
    fi
}

# $@

 for package in $@
    
    do
       #check if package is installed or not
        dnf install $package -y &>>$LOG_FILE
       
        # if exit status is 0, already installed, else not installed
       if [ $? -ne 0 ]; then
            dnf install $package -y &>>$LOG_FILE
            VALIDATE $? "$package"
         else
            echo -e "$package already installed... $Y SKIPPING $N"
        fi
    done       