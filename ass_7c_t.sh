triangle(){

  tput clear
  row=$1

  x=5
  y=5

  for((r=0;r<`expr $row - 1`;r++))
  do
    f_c=`expr $row - $r - 1 + $x`
    l_c=`expr $row + $r - 1 + $x`

    tput cup $((r+y)) $f_c
    echo "*"


    tput cup $((r+y)) $l_c
    echo "*"

    # tput cup $(tput lines)	0

  done  

  # tput cup $(tput lines)	0  
   
  for((i=0;i<$row;i++))
  do  
    r=`expr $row - 1 + $y`
    c=`expr $i \* 2 + $x`

    tput cup $r $c
    echo "*"

    # tput cup $(tput lines)	0
  done  


}

square(){

  row=$1

  x=25
  y=5

  for((i=0;i<$row;i++))
  do  
    r=`expr 0 + $y`
    c=`expr $i \* 2 + $x`

    tput cup $r $c
    echo "*"

    # tput cup $(tput lines)	0
  done 

  for((i=1;i<=`expr $row - 2`;i++))
  do  
    r=`expr $i + $y`
    f_c=`expr 0 + $x`
    l_c=`expr $((row*2 - 2)) + $x`

    tput cup $r $f_c
    echo "*"

    tput cup $r $l_c
    echo "*"

    # tput cup $(tput lines)	0

  done  
     


  for((i=0;i<$row;i++))
  do  
    r=`expr $row - 1 + $y`
    c=`expr $i \* 2 + $x`

    tput cup $r $c
    echo "*"

    # tput cup $(tput lines)	0
  done  

}

clear
echo "Enter number of rows"
read rows
triangle $rows
square $rows 