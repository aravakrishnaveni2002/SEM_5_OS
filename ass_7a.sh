pascal(){
	
	n=$1

	j=1

	while [ $j -le $n ]
	do
		c=1
		s=1
	
		for((s=1;s<=`expr $n - $j`;s++))
		do
			printf " "
		done

		k=1
	
		while [ $k -le $j ]
		do
			printf "$c "
			p=`expr $j - $k`
			q=`expr $p \* $c`
			c=`expr $q / $k`
			k=`expr $k + 1`
		done

		printf "\n"

		j=`expr $j + 1`
	done

}

clear 
echo "Enter number of rows"
read n
pascal $n
