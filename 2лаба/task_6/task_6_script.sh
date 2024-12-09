#!/bin/bash
# Задача 6: Найти общее количество подкаталогов в каталоге
directory=$1

if [[ -z "$directory" ]]; then
    echo "Использование: $0 <каталог>"
    exit 1
fi

count=$(find "$directory" -type d | wc -l)
echo "Общее количество подкаталогов: $count"
