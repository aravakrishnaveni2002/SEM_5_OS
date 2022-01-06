palindrome(){
	
	num=$1
	
	new_num=0

	while [ $num -gt 0 ]
	do
		rem=`expr $num \% 10`
		num=`expr $num / 10`
		
		new_num=`expr $new_num \* 10`
		new_num=`expr $new_num + $rem`

	done

	echo $new_num
}

clear 
echo Enter the number
read num

new_num=`palindrome $num`

if [ $new_num -eq $num ];then
	echo $num is Palindrome

else 
	echo $num is not palindrome

fi

