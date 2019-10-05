#!/bin/bash
echo "creating 10 directories"

n=1;

while [ $n -le 10 ]
do
dirname=exam$n
echo "Creating $dirname"
if [[ -d $dirname ]]
then
echo "$dirname Exists"
else
mkdir -p $dirname
fi

n=$(($n+1))

done

echo "Enter Dir Name"
read d

if [[ -d $d ]]
then
echo "$d Exists"
else
echo "$d Not Exists"
fi
