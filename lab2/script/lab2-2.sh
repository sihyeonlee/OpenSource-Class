#!/bin/sh

if [ $2 = "+" ]; then
    res=`expr $1 + $3`
elif [ $2 = "-" ]; then
    res=`expr $1 - $3`
fi

echo $res