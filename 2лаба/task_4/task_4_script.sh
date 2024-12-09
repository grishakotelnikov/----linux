#!/bin/bash
# Задача 4: Вывод на экран имен всех файлов с указанным расширением в каталоге
directory=$1
extension=$2

if [[ -z "$directory" || -z "$extension" ]]; then
    echo "Использование: $0 <каталог> <расширение>"
    exit 1
fi

find "$directory" -type f -name "*.$extension"
