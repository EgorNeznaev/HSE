func1() {
    local name="$1"
    echo "Hello, $name"
}


func2() {
    local num1="$1"
    local num2="$2"
    local sum=$((num1 + num2))
    echo "$sum" 
}

echo "Функция 1:"
func1 "World"

echo "Функция 2:"
result1=$(func2 10 5)
echo "Сумма 10 и 5: $result1"
