#!/bin/bash
#Greater than and Less than

NUMBER=$1

if [ $1 -lt 10 ];  then
    echo "Given number $1 is Less than 10"
elif [ $1 -eq 10 ]; then
    echo "Given number $1 is Equal to 10"    
else
    echo "Given number $1 is Greater than 10"
fi  
