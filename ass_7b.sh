clear
echo "Enter the radius"
read r
tput clear

for((i=1;i<=360;i+=2))
do
	a=`echo "scale=3;3.14/180*$i"|bc|awk '{print cos($1)}'`
	x=`echo "scale=3;$r*$a"|bc|awk '{print int($1)}'`
	b=`echo "scale=3;3.14/180*$i"|bc|awk '{print sin($1)}'`
	y=`echo "scale=3;$r*$b"|bc|awk '{print int($1)}'`

	q=`expr $x + 35`
	p=`expr 10 - $y`
	tput cup $p $q
	echo "*"
done

tput cup $(tput lines)	0
