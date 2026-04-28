#!/bin/bash
#Sum of two numbres

NUMBER1=100
NUMBER2=200

SUM=$(($NUMBER1+$NUMBER2))

echo "Sum of $NUMBER1 and $NUMBER2 is $SUM"

LEADERS="Modi, Rahul, Kejriwal"

echo "All Leaders: ${LEADERS[@]}"
echo "First Leader: {Leaders[0]}"
cho "Second Leader: ${LEADERS[1]}"