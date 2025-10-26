
echo "1. ЧТЕНИЕ ДАННЫХ ИЗ input.txt:"

if [ -f "input.txt" ]; then
    echo "Содержимое файла input.txt:"
    cat input.txt
    echo
else
    echo "Файл input.txt не существует. Создаем пример файла..."
    cat > input.txt << EOF
EOF
    echo "Файл input.txt создан. Содержимое:"
    cat input.txt
    echo
fi

echo "2. ПЕРЕНАПРАВЛЕНИЕ ВЫВОДА wc -l В output.txt:"

wc -l input.txt > output.txt

echo "Команда выполнена: wc -l input.txt > output.txt"
echo "Содержимое файла output.txt:"
cat output.txt
echo

echo "3. ПЕРЕНАПРАВЛЕНИЕ ОШИБОК ls В error.log:"
ls несуществующий_файл.txt 2> error.log

echo "Команда выполнена: ls несуществующий_файл.txt 2> error.log"
echo "Содержимое файла error.log:"
cat error.log
echo

