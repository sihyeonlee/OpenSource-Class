#!/bin/sh

grep $1 DB.txt

if [ $? -eq 0 ];then
    echo "검색 완료"
else
    echo "검색 결과가 없습니다."
fi