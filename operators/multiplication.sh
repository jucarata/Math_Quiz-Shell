#!/bin/bash

function multiplication {
    typeset -i num1 num2 attempts real_res
    num1=$1
    num2=$(( $2 % 10 + 1 )) 
    real_res=$((num1 * num2))

    attempts=0

    while (( attempts < 3 ))
    do
        echo "¿Cuánto es: $num1 x $num2 ?"
        read -p "Respuesta: " res

        if ! [[ $res =~ ^[0-9]+$ ]]; then
            echo "Eso no es un número válido. Intenta de nuevo."
            continue
        fi

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