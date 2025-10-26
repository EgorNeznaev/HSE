get_number() {
    while true; do
        read -p "Пожалуйста, введите целое число: " input
        
        if [[ "$input" =~ ^-?[0-9]+$ ]]; then
            number=$input
            break
        else
            echo "Ошибка: '$input' не является целым числом. Попробуйте еще раз."
        fi
    done
}

get_number

echo -e "\n● Анализ числа:"
if [ "$number" -gt 0 ]; then
    echo "   Число $number - ПОЛОЖИТЕЛЬНОЕ"
elif [ "$number" -lt 0 ]; then
    echo "   Число $number - ОТРИЦАТЕЛЬНОE"
else
    echo "   Число $number - НОЛЬ"
fi

echo -e "\n● Операция подсчета:"
if [ "$number" -gt 0 ]; then    
    count=1
    while [ "$count" -le "$number" ]; do
        if [ "$count" -eq "$number" ]; then
            echo "$count"
        else
            echo "$count"
        fi
        ((count++))
    done
else
    echo "   Для числа $number подсчет не выполняется"
fi