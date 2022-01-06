triangle(){

	rows=$1
	s=1

	for((r=0;r<`expr $rows - 1`;r++))
	do
		for((space=`expr $rows - 1`;space>$r;space--))
		do
			printf " "
		done
		
		printf "*"

		if [ $r -ne 0 ];then
			
			
			for((space=1;space<=`expr 2 \* $s - 1`;space++))
			do
				printf " "
			done
			

			printf "*"
			s=`expr $s + 1`

		fi

		printf "\n"

	done

	for((star=1;star<=$rows;star++))
	do
		printf "* "
	done

	printf "\n"
		
}

square(){
	rows=$1

	for((i=1;i<=rows;i++))
	do
		printf "* "
	done

	printf "\n"

	for((i=1;i<=rows-2;i++))
	do	
		for((j=1;j<=rows;j++))
		do
			if [ $j -eq 1 -o $j -eq $rows ];then
				printf "* "

			else
				printf "  "

			fi

		done

		printf "\n"

	done

	for((i=1;i<=rows;i++))
	do
		printf "* "
	done
	
	printf "\n"

}

clear
echo "Enter number of rows"
read rows
triangle $rows
printf "\n"
square $rows
