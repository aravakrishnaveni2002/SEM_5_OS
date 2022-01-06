fibonacciSeq(){
	
	n=$1

	a=0
	b=1

	if [ $n -eq 1 ];then
		printf "$a "

	elif [ $n -eq 2 ];then
		printf "$a $b "

	elif [ $n -ge 3 ];then
		printf "$a $b "

		for((i=3;i<=$n;i++))
		do
			c=`expr $a + $b`
			a=$b
			b=$c

			printf "$c "

		done

	fi

	printf "\n"
	  
}

clear
echo "Enter the range upto which fibonacci has to be printed"
read n

fibonacciSeq $n
