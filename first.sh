if [ $# -eq 0 ]; then
    echo "Ошибка: укажите имя файла в качестве аргумента"
    exit 1
fi

target_file=$1

echo "Список всех файлов в текущей директории с указанием типа:"
for item in *; do
    if [ -f "$item" ]; then
        echo "Файл: $item"
    elif [ -d "$item" ]; then
        echo "Каталог: $item"
    elif [ -L "$item" ]; then
        echo "Символическая ссылка: $item"
    elif [ -b "$item" ]; then
        echo "Блочное устройство: $item"
    elif [ -c "$item" ]; then
        echo "Символьное устройство: $item"
    else
        echo "Неизвестный тип: $item"
    fi
done

echo -e "Проверка наличия файла '$target_file':"
if [ -e "$target_file" ]; then
    echo "Файл '$target_file' существует"
else
    echo "Файл '$target_file' отсутствует"
fi

echo -e "Права доступа для файлов в текущей директории:"
for item in *; do
    if [ -e "$item" ]; then
        permissions=$(ls -ld "$item" | awk '{print $1}')
        echo "$item: $permissions"
    fi
done