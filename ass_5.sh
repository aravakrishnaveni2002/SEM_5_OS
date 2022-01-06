clear

echo "Enter the marks obtained"
read marks

case $marks in
100|9[0-9]) echo Grade O;;
8[0-9]) echo Grade E;;
7[0-9]) echo Grade A;;
6[0-9]) echo Grade B;;
5[0-9]) echo Grade C;;
[0-9]|[1-4][0-9]) echo Grade F;;
*) echo "Invalid"
esac

