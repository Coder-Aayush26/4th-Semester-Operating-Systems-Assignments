#!/bin/bash

while true
do
    echo "Calculator:-"
    echo "1. Area of Circle"
    echo "2. Circumference of Circle"
    echo "3. Area of Rectangle"
    echo "4. Area of Square"
    echo "5. Exit"
    echo "Enter choice:"

    read ch

    case $ch in
        1)
            echo "Enter radius:"
            read r
            area=$(echo "3.14 * $r * $r" | bc)
            echo "Area of Circle = $area"
            ;;

        2)
            echo "Enter radius:"
            read r
            circ=$(echo "2 * 3.14 * $r" | bc)
            echo "Circumference = $circ"
            ;;

        3)
            echo "Enter length:"
            read l
            echo "Enter breadth:"
            read b
            area=$(echo "$l * $b" | bc)
            echo "Area of Rectangle = $area"
            ;;

        4)
            echo "Enter side:"
            read s
            area=$(echo "$s * $s" | bc)
            echo "Area of Square = $area"
            ;;

        5)
            exit
            ;;

        *)
            echo "Invalid choice"
            ;;
    esac
done
