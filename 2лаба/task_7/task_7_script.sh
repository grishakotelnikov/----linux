#!/bin/bash
# Задача 7: Найти файлы, присутствующие в обоих каталогах
directory1=$1
directory2=$2

if [[ -z "$directory1" || -z "$directory2" ]]; then
    echo "Использование: $0 <каталог1> <каталог2>"
    exit 1
fi

for file in $(find "$directory1" -type f); do
    basename=$(basename "$file")
    if [[ -f "$directory2/$basename" ]]; then
        echo "$basename"
    fi
done
