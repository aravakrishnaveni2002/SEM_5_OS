clear

echo "Enter the date of birth(dd/mm/yyyy)"
read dob
IFS="/"
set $dob
echo $dob
d=$1
m=$2
y=$3
cur_d=`date +%d`
cur_m=`date +%m`
cur_y=`date +%Y`

echo $cur_d
echo $cur_m
echo $cur_y

age_d=`expr $cur_d - $d`
age_m=`expr $cur_m - $m`
age_y=`expr $cur_y - $y`

echo $age_d
echo $age_m
echo $age_y

if [ $age_d -lt 0 ]
then
  age_m=`expr $age_m - 1`
  age_d=`expr $age_d + 30`
fi

if [ $age_m -lt 0 ]
then
  age_y=`expr $age_y - 1`
  age_m=`expr $age_m + 12`
fi

echo "Age is $age_y years, $age_m months, $age_d days"