#!/bin/bash
# Задача 8: Вычисление факториала числа
number=$1

if [[ -z "$number" || ! "$number" =~ ^[0-9]+$ || "$number" -lt 0 ]]; then
    echo "Введите неотрицательное целое число."
    exit 1
fi

factorial=1
for (( i=1; i<=number; i++ )); do
    factorial=$((factorial * i))
done

echo "Факториал числа $number: $factorial"
