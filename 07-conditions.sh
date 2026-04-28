#!/bin/bash
#Greater than and Less than

NUMBER=$1

if [ "$NUMBER" -lt 10 ];  then
    echo "Given number $NUMBER is Less than 10"
elif [ "$NUMBER" -eq 10 ]; then
    echo "Given number $NUMBER is Equal to 10"    
else
    echo "Given number $NUMBER is Greater than 10"
fi  
