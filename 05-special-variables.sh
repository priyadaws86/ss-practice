#!/bin/bash

echo "Script Name: $0"
echo " User Name: $USER"
echo " Home Directory: $HOME"
echo " Current Directory: $PWD"
echo " Number of Arguments: $#"
echo " Arguments: $*"   
echo "All variables passed in the script: $@"
echo "All variables passed in the script: $*"
echo "PID of the script: $$"
sleep 20
echo "pid of the last background process: $!"


