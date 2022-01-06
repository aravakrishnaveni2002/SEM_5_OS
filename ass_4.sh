
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

fact(){
	n=$1
	pro=1

	for((i=1;i<=$n;i++))
	do
		pro=`expr $pro \* $i`
	done

	echo $pro
}


fun(){
	x=$1
	n=$2

	sum=1

	for((i=1;i<=$n;i++))
	do
		f=`expr 2 \* $i`
		p=`power $x $f`
		f=`fact $f`
		
		sum=`echo "scale =3; $sum + (($p))/$f" |bc`
	done

	echo $sum

	
}

clear
echo "Enter the values of x and n"
read x
read n
ans=`fun $x $n`
echo The Result is $ans
