gcd(){
	
	n1=$1
	n2=$2

	if [ $n1 -eq 0 ];then
		echo $n2

	elif [ $n2 -eq 0 ];then
		echo $n1

	elif [ $n1 -le $n2 ];then
		rem=`expr $n2 \% $n1`
		echo $((`gcd $rem $n1`))
	
	else
		rem=`expr $n1 \% $n2`
		echo $((`gcd $rem $n2`))

	fi 
}

lcm(){
	
	n1=$1
	n2=$2
	gcdRes=$3

	echo $((($n1*$n2)/ $gcdRes))

	
}

clear
echo Enter two numbers
read n1
read n2

gcdRes=`gcd $n1 $n2`

lcmRes=`lcm $n1 $n2 $gcdRes`

echo GCD of two numbers $n1 and $n2 is $gcdRes

echo LCM of two numbers $n1 $n2 is $lcmRes

