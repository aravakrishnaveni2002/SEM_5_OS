contents(){
  echo "Enter a file name"
  read file
  cat $file
}

users(){

  who

}

presentWorkingDir(){

  pwd && ls

}

listOfFiles(){

  ls -l
}

processOfUsers(){
  ps
}

todayDate(){
  date
}

displayCalender(){
  echo "Enter any year"
  read year
  cal $year
}

clear

for((;;))
do
  echo -e "\n-------------------\n"
  echo -e "1.Contenets of file\n2.List of users who currently logged in\n3.Present working directory\n4.List of files\n5.Process of users\n6.Today's date\n7.Display calender of any tear\n8.Exit"
  echo -e "-------------------\n"

  read n

  case $n in
  1) contents ;;
  2) users ;;
  3) presentWorkingDir ;;
  4) listOfFiles ;;
  5) processOfUsers ;;
  6) todayDate ;;
  7) displayCalender ;;
  8) exit ;;
  *) echo -e "Command not Found\n"
  esac
done  