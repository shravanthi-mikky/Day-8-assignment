
declare -A dict
declare -A dic
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
max=0
min=10
while [ $count1 -lt 10 ] && [ $count2 -lt 10 ] && [ $count3 -lt 10 ] && [ $count4 -lt 10 ] && [ $count5 -lt 10 ] && [ $count6 -lt 10 ]
do
	role=$((($RANDOM %6) + 1))
	dict[dice]=$role
        case $role in
		1 )
			((count1++))
			dic[count1]=$(($count1))
			[[ $count1 -gt $max ]] && max=$count1
			[[ $count1 -lt $min ]] && min=$count1
			echo $count1 $max $min
			;;

		2 )
			((count2++))
			dic[count2]=$(($count2))
			[[ $count2 -gt $max ]] && max=$count2
			[[ $count2 -lt $min ]] && min=$count2
			echo $count2 $max $min
			;;
		3 )
			((count3++))
			dic[count3]=$(($count3))
			[[ $count3 -gt $max ]] && max=$count3
			[[ $count3 -lt $min ]] && min=$count3
			echo $count3 $max $min
			;;
		4 )
			((count4++))
			dic[count4]=$(($count4))
			[[ $count4 -gt $max ]] && max=$count4
			[[ $count4 -lt $min ]] && min=$count4
			echo $count4 $max $min
			;;
		5 )
			((count5++))
			dic[count5]=$(($count5))
			[[ $count5 -gt $max ]] && max=$count5
			[[ $count5 -lt $min ]] && min=$count5
			echo $count5 $max $min
			;;
		6 )
			((count6++))
			dic[count6]=$(($count6))
			[[ $count6 -gt $max ]] && max=$count6
			[[ $count6 -lt $min ]] && min=$count6
			echo $count6 $max $min
			;;
		* )
			echo " Something went wrong "
	esac
done
echo $max $min ${dic[@]}
