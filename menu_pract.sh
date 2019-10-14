
        echo "Menu "
        echo "1. COpy a File "
        echo "2. Remove a file "
        echo "3. Move a file"
        echo "4. Quit"
        echo "5. Zip File"
        echo "6. Unzip file"
        echo "7. Gzip File"
        echo "8. Gunzip file"
        echo "9. Zip using tar "
        echo "10. Unzip using tar"
        echo "11.Extract only one file from tar"
        echo "12.Backup file"


        echo "Enter ur Choice \c"
        read Choice
        case "$Choice" in
           1) echo "Enter File name to copy \c"
              read f1
              echo "Enter FIle name \c "
          read f2         
          if [ -f $f1 ]
          then
                  cp $f1 $f2
              else
                     echo "$f1 does not exist"
              fi
              ;;
          2) echo "Enter the File to be removed "
             read r1
             if [ -f $r1 ]
             then      
                   rm -i $r1
             else 
                  echo "$r1 file does not exist "
             fi
             ;;
         3)
            echo "Enter File name to move \c"
            read f1
            echo "Enter destination \c "
            read f2
            if [ -f $f1 ]
             then 
                 if [ -d $f2 ]
                 then
                      mv $f1 $f2
                 fi
             else
                 echo "$f1 does not exist"
            fi
            ;;
         4) 
             echo "Exit......."
             exit;;

         5)
            echo "Enter file to zip"
                read f1
            if [ -f $f1 ]
             then
                zip myzip.zip $f1
            
            else    
                echo "$f1 does not exist"
            fi
            ;;

        6)
            echo "Enter file to unzip"
                read f1
            if [ -f $f1 ]
             then
                unzip $f1
             else
                echo "$f1 does not exist"
            fi
            ;;
        7)
          echo "Enter file to Gzip"
                read f1
            if [ -f $f1 ]
             then
                gzip $f1
             else
                echo "$f1 does not exist"
            fi
            ;;
        8)
          echo "Enter file to gzip"
                read f1
            if [ -f $f1 ]
             then
                gunzip $f1
             else
                echo "$f1 does not exist"
            fi
            ;;

        9)
        echo "Enter file to zip using tar"
                read f1
                if [ -f $f1 ]
                    then
                    tar -czf archive.tar.gz $f1
                else
                    echo "$f1 or $f2 does not exist"
                    fi

                ;;
        10)
            echo "Enter file to Unzip using tar"
                read f1
                if [ -f $f1 ]
                    then
                     tar -tf $f1
                else
                    echo "$f1 or $f2 does not exist"
                    fi
                 ;;
        11)
          echo "Enter one file to extract from tar"
                read f1
            echo "Enter tar name"
                read f2
                if [ -f $f1 ]
                 then
                  tar -xf $f2 $f1
                  else
                    echo "$f1 or $f2 does not exist"
                 fi  
        ;;
        12)
        ;;
        esac
