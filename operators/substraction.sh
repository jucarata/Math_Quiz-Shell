#!/bin/bash
function substraction {
    typeset -i num1 num2 attempts real_res res
    num1=$1
    num2=$2

    if ((num1 < num2))
    then
        num1=$2
        num2=$1
    fi

    real_res=$((num1 - num2))

    attempts=0

    while (( attempts < 3 ))
    do
        echo "¿Cuánto es: $num1 - $num2 ?"
        read -p "Respuesta: " res

        ((attempts++))

        if (( res == real_res )) then
            echo "¡Felicitaciones! Esa es la respuesta correcta."
            break
        fi

        if ((attempts != 3)) then
            echo "Ups, no es correcto. ¡Intenta de nuevo!"
        fi
    done

    if (( attempts == 3 )) && (( res != real_res )); then
        echo "Oh, lo siento. Te has quedado sin intentos. La respuesta correcta era $real_res."
    fi
}