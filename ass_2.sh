
Y(){
	
	x=$1
	n=$2

	ans=0
	
	if [ $n -eq 1 ];then
		ans=`expr $x \* $x`
		ans=`expr $ans + 1`

	elif [ $n -eq 2 ];then
		ans=`expr $x / $n`
		ans=`expr $ans + 1`

	elif [ $n -eq 3 ];then
		ans=`expr $x \* 2`
		ans=`expr $ans + 1`

	else
		ans=`expr $x \* $n`
		ans=`expr $ans + 1`

	fi

	echo $ans

		
}

clear
echo "Enter the values of x and n"
read x
read n
ans=`Y $x $n`
echo The Result is $ans
