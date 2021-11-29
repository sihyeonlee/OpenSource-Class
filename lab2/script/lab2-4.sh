#!/bin/sh
echo "리눅스가 재미있나요? (yes / no)"
read answer

case $answer in
    yes | y | Y | Yes | YES | 예 | 네 | [yY]*)
        echo "YES";;
    no | n | N | No | NO | 아니요 | 노 | [nN]*)
        echo "No";;
    *)
        echo "Please answer 'YES' or 'NO'"
        exit 1;;
esac
