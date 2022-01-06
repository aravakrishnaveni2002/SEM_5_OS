 
power(){
	
	a=$1
	b=$2

	ans=1

	for((i=1;i<=b;i++))
	do
		ans=`expr $ans \* $a`

	done

	echo $ans
}

findDig(){

	num=$1
	noOfDig=0

	while [ $num -gt 0 ]
	do
		num=`expr $num / 10`
		noOfDig=`expr $noOfDig + 1`
	done

	echo $noOfDig

}

isArmstrong(){
	
	num=$1
	noOfDig=`findDig $num`

	sum=0

	temp=$num

	while [ $temp -gt 0 ]
	do
		rem=`expr $temp \% 10`
		temp=`expr $temp / 10`
	
		pow=`power $rem $noOfDig`
		sum=`expr $sum + $pow`

	done

	if [ $sum -eq $num ];then
		echo 1

	else
		echo 0

	fi
}

armstrongSeq(){

	low=$1
	high=$2

	for((i=$low;i<=$high;i++))
	do
		if [ `isArmstrong $i` -eq 1 ];then
			printf "$i "
		fi
	done

	printf "\n"
	
}

clear
echo "Enter the range (low and high) within which armstrong numbers to be printed"
read low
read high
armstrongSeq $low $high

