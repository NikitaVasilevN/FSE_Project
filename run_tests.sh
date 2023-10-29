#!/bin/bash

function run_test() {
    test_name=$1
    input=$2
    expected_output=$3

    echo -n "$test_name: "

    # Запускаем программу и передаем ввод
    echo -e "$input" | ./main

    # Проверяем вывод программы
    if grep -q "$expected_output" results.txt; then
        echo "PASSED"
    else
        echo "FAILED"
        echo "Expected '$expected_output' in results.txt, but it was not found"
        cat results.txt  # Показать содержимое файла results.txt
    fi

    # Очищаем результаты перед следующим тестом
    rm -f results.txt
}

# Компилируем программу
g++ -o main main.cpp

# Запускаем тесты
run_test "Test 1: Normal input" "3\n5\n10\n25\n" "GCD of the list: 5"
run_test "Test 2: All same numbers" "3\n7\n7\n7\n" "GCD of the list: 7"
run_test "Test 3: Negative numbers" "3\n-9\n-18\n-27\n" "GCD of the list: 9"
run_test "Test 4: Mixed positive and negative" "3\n15\n-30\n45\n" "GCD of the list: 15"
run_test "Test 5: Including zero" "3\n0\n20\n40\n" "GCD of the list: 20"

# И так далее для других функций и тестовых случаев
