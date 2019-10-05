#!/bin/bash
echo "Check file or directory"

echo "Enter File or Directory Name"
read fd

if [[ -d $fd ]]
then
echo "$fd is Directory!"
elif [[ -f $fd ]]
then
echo "$fd is file!"
else
echo "$fd is invalid!"
fi
