#!/bin/bash

file="address.txt"

while true
do
    echo "----- Address Book -----"
    echo "1. Create Address Book"
    echo "2. View Address Book"
    echo "3. Insert Record"
    echo "4. Delete Record"
    echo "5. Modify Record"
    echo "6. Exit"
    echo "Enter your choice:"

    read choice

    case $choice in
        1)
            > "$file"
            echo "Address Book Created"
            ;;

        2)
            if [ -f "$file" ]
            then
                cat "$file"
            else
                echo "No Address Book Found"
            fi
            ;;

        3)
            echo "Enter Name:"
            read name
            echo "Enter Phone:"
            read phone
            echo "$name $phone" >> "$file"
            echo "Record Added"
            ;;

        4)
            if [ -f "$file" ]
            then
                echo "Enter name to delete:"
                read name

                if grep -q "^$name " "$file"
                then
                    grep -v "^$name " "$file" > temp.txt
                    mv temp.txt "$file"
                    echo "Record Deleted"
                else
                    echo "Record not found"
                fi
            else
                echo "No Address Book Found"
            fi
            ;;

        5)
            if [ -f "$file" ]
            then
                echo "Enter name to modify:"
                read name

                if grep -q "^$name " "$file"
                then
                    grep -v "^$name " "$file" > temp.txt

                    echo "Enter new name:"
                    read newname
                    echo "Enter new phone:"
                    read newphone

                    echo "$newname $newphone" >> temp.txt
                    mv temp.txt "$file"

                    echo "Record Modified"
                else
                    echo "Record not found"
                fi
            else
                echo "No Address Book Found"
            fi
            ;;

        6)
            echo "Exiting..."
            exit
            ;;

        *)
            echo "Invalid choice"
            ;;
    esac
done
