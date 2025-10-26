echo "1. Запуск sleep 30 &"
sleep 30 &
PID1=$!
echo "   Задача 1 запущена с PID: $PID1"

echo "2. Запуск sleep 25 &"
sleep 25 &
PID2=$!
echo "   Задача 2 запущена с PID: $PID2"

echo "3. Запуск sleep 20 &"
sleep 20 &
PID3=$!
echo "   Задача 3 запущена с PID: $PID3"

echo
echo "ТЕКУЩЕЕ СОСТОЯНИЕ ЗАДАЧ"
jobs -l

echo
echo "ДЕМОНСТРАЦИЯ КОМАНДЫ FG"
echo "Используем 'fg %1' чтобы перевести задачу 1 в foreground"
echo "Нажмите Ctrl+Z чтобы приостановить задачу"
read -p "Нажмите Enter для продолжения"
fg %1

echo
echo "СОСТОЯНИЕ ПОСЛЕ PAUSE"
jobs -l

echo
echo "ДЕМОНСТРАЦИЯ КОМАНДЫ BG"
echo "Используем 'bg %1' чтобы возобновить задачу 1 в фоне"
read -p "Нажмите Enter для продолжения"
bg %1

echo
echo "СОСТОЯНИЕ ПОСЛЕ BG"
jobs -l

echo
echo "МОНИТОРИНГ ЗАВЕРШЕНИЯ ЗАДАЧ"

while true; do
    running_jobs=$(jobs -r | wc -l)
    if [ $running_jobs -eq 0 ]; then
        break
    fi
    echo "Осталось задач: $running_jobs"
    jobs -l
    sleep 5
    echo
done

echo
echo "ВСЕ ЗАДАЧИ ЗАВЕРШЕНЫ"
jobs -l