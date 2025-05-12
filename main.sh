#!/bin/bash
# QUIZ MATEMÁTICO
# Autores: Juan Camilo Ramirez Tabares & Juan Felipe Castillo Gomez

source ./operators/addition.sh
source ./operators/substraction.sh
source ./operators/multiplication.sh
source ./operators/division.sh

function quiz {
    opt=$1
    typeset -i num1 num2
    num1=$((RANDOM % 100 + 1))
    num2=$((RANDOM % 100 + 1))

    case $opt in
        1) addition $num1 $num2;;
        2) substraction $num1 $num2;;
        3) multiplication $num1 $num2;;
        4) division $num1 $num2;;
    esac
}

typeset -i flag=0

while (( flag == 0 ))
do
    echo "========================="
    echo "      QUIZ MATEMÁTICO"
    echo "========================="
    echo "1) Problemas de suma"
    echo "2) Problemas de resta"
    echo "3) Problemas de multiplicación"
    echo "4) Problemas de división"
    echo "*) Cualquier otro simbolo para salir"
    echo "========================="
    read -p "Opción? " opt

    case $opt in
        1|2|3|4) quiz $opt;;
        *) echo "Gracias por participar. ¡Hasta luego!"; flag=1;;
    esac
done;