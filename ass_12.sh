clear

file1=weather
echo $file1
echo 
cat $file1
echo 

echo  -e DAYT '\t' TEMPERATURE '\t' WEATHER  >> out2

if [ -f $file1 ]
then
  exec<$file1
  while read line 
  do
    set `echo $line`
    
    if [ $2 -lt 15 ];then  
      echo -e $1 '\t\t\t' $2 '\t' Very Cold >>out2 
    elif [ $2 -ge 15 ] & [ $2 -lt 25 ];then
        echo -e $1 '\t\t\t' $2 '\t' Cold >>out2      
    elif [ $2 -ge 25 ] & [ $2 -lt 35 ];then
        echo -e $1 '\t\t\t' $2 '\t' Hot >>out2 
    elif [ $2 -ge 35 ];then
        echo -e $1 '\t\t\t' $2 '\t' Very Hot >>out2 
    fi
  done
fi

echo 

cat out2
