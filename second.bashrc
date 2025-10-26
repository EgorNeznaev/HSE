if [ $# -eq 0 ]; then
    echo "Ошибка: укажите директорию для добавления в PATH"
    echo "Использование: $0 /путь/к/директории"
    exit 1
fi

new_directory=$1

if [ ! -d "$new_directory" ]; then
    echo "Ошибка: директория '$new_directory' не существует"
    exit 1
fi

echo "1. Текущее значение PATH:"
echo "$PATH"
echo

if echo "$PATH" | tr ':' '\n' | grep -q "^$new_directory$"; then
    echo "Директория '$new_directory' уже присутствует в PATH"
else
    export PATH="$PATH:$new_directory"
    echo "2. Директория '$new_directory' добавлена в PATH"
    echo
    echo "Новое значение PATH:"
    echo "$PATH"
fi