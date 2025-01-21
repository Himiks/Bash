#!/bin/bash

if [ "$#" -gt 0 ]; then
    bkdir="backup"
    
    # Проверяем, существует ли директория "backup", если нет, создаем ее
    if [ ! -d "$bkdir" ]; then
        mkdir "$bkdir"
    fi

    # Перебираем все переданные аргументы
    for dir in "$@"; do
        # Проверяем, является ли текущий аргумент директорией
        if [ -d "$dir" ]; then
            # Создаем путь для бэкапа
            bkpath="$bkdir/$(basename "$dir")"
            
            # Копируем директорию в "backup"
            cp -r "$dir" "$bkpath"

            # Проверяем успешность операции копирования
            if [ $? -ne 0 ]; then
                echo "Failed to back up $dir"
            else
                echo "Successfully backed up $dir"
            fi
        else
            # Если директория не существует, выводим сообщение об ошибке
            echo "Directory '$dir' doesn't exist"
        fi
    done
else
    # Если не переданы аргументы, выводим сообщение и завершаем выполнение
    echo "Enter at least one directory"
    exit 1
fi


