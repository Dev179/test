echo "Menu"
echo "copy file"

echo "Enter your choice \c"
read choice
case "$choice" in
     1) echo "Enter file name to copy \c"
	read f1
	echo "Enter file name \c"
	read f2
	 if [ -f $f1 ]
          then
                  cp $f1 $f2
              else
                     echo "$f1 does not exist"
              fi
              ;;
