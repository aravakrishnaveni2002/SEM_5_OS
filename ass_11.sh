file1=marks
echo $file1
echo 
cat $file1
echo 

echo -e ROLL '\t' NAME '\t' MARKS '\t' GRADE >> out1

if [ -f $file1 ]
then
  exec<$file1
  while read line 
  do
    set `echo $line`
    case $3 in
    100|9[0-9]) echo -e '\t' $1 '\t' $2 '\t' $3 '\t'   O >> out1;;
    8[0-9]) echo -e '\t' $1 '\t' $2 '\t' $3 '\t'  E >> out1;;
    7[0-9]) echo -e  '\t' $1 '\t' $2 '\t' $3 '\t'  A >> out1;;
    6[0-9]) echo -e  '\t' $1 '\t' $2 '\t' $3 '\t'  B >> out1;;
    5[0-9]) echo -e  '\t' $1 '\t' $2 '\t' $3 '\t'  C >> out1;;
    [0-9]|[1-4][0-9]) echo -e  '\t' $1 '\t' $2 '\t' $3 '\t'  F >> out1;;
    *) echo -e  '\t' $1 '\t' $2 '\t' $3 '\t' "Invalid" >> out1
    esac
  done
fi

echo 
cat out1
