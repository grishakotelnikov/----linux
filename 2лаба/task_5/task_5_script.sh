#!/bin/bash
# Задача 5: Найти наибольшее и наименьшее среди введенных с клавиатуры чисел
max=-2147483648
min=2147483647

while true; do
    read -p "Введите число (или '-' для завершения): " number
    if [[ "$number" == "-" ]]; then
        break
    fi
    
    if [[ "$number" =~ ^-?[0-9]+$ ]]; then
        if (( number > max )); then
            max=$number
        fi
        if (( number < min )); then
            min=$number
        fi
    else
        echo "Пожалуйста, введите целое число."
    fi
done

echo "Наибольшее число: $max"
echo "Наименьшее число: $min"
