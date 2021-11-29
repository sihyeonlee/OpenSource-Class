#!/bin/sh

# bmi=`echo "$1 $2"|awk '{printf "%.2f", $1 / ($2 * $2 / 10000)}'`

bmi=`echo "scale=3; $1 / ($2 * $2 / 10000)"|bc`

if [ $(echo "scale=1;$bmi < 18.5"|bc) -ne 0 ]; then
    echo 저체중입니다.
elif [ $(echo "scale=1; $bmi < 23"|bc) -ne 0 ]; then
    echo 정상체중입니다.
elif [ $(echo "scale=1; $bmi >= 23"|bc) -ne 0 ]; then
    echo 과체중입니다.
fi