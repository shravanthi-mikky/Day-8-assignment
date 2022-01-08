#! /bin/bash -x
declare -A dict
for ((i=1;i<=12;i++))
do
	counter[$i]=0
done
#random birthmonths of 50 and storing them in dictionary
for ((i=1;i<=50;i++))
do
	role=$((($RANDOM%12)+1))
	((counter[$role]++))
	dict[count$i]=$role
done
echo ${dict[@]}
echo ${counter[@]}
for ((i=1;i<=12;i++))
do
	echo "There are" ${counter[$i]} "Birthdays in month of " $i
done
