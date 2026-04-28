#!/bin/bash
#Print even number

NUMBER=10

if [$((NUMBER % 2)) -EQ 0]
then
    echo "Given number $NUMBER is even"
    else
    echo "Given number $NUMBER is odd"
fi


