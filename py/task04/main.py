from functools import reduce
from itertools import cycle
from math import factorial

# 2. Представлен список чисел. Необходимо вывести элементы исходного списка, значения которых больше предыдущего
# элемента.
# Подсказка: элементы, удовлетворяющие условию, оформить в виде списка. Для формирования списка использовать генератор.
# Пример исходного списка: [300, 2, 12, 44, 1, 1, 4, 10, 7, 1, 78, 123, 55].
# Результат: [12, 44, 4, 10, 78, 123].
task04_2_arr = [300, 2, 12, 44, 1, 1, 4, 10, 7, 1, 78, 123, 55]
filtered_arr = []
prev_el = task04_2_arr[0]
for x in task04_2_arr:
    if x > prev_el:
        filtered_arr.append(x)
    prev_el = x
task04_2_result = [x for x in filtered_arr]
print(task04_2_result, 'result for task04_2')

# 3. Для чисел в пределах от 20 до 240 найти числа, кратные 20 или 21. Необходимо решить задание в одну строку.
task04_3_result = [x for x in range(20, 240) if x % 20 == 0 or x % 21 == 0]
print(task04_3_result, 'result for task04_3')

# 4. Представлен список чисел. Определить элементы списка, не имеющие повторений. Сформировать итоговый массив чисел,
# соответствующих требованию. Элементы вывести в порядке их следования в исходном списке. Для выполнения задания
# обязательно использовать генератор.
task04_4_source = [2, 2, 2, 7, 23, 1, 44, 44, 3, 2, 10, 7, 4, 11]
task04_4_result = [x for x in task04_4_source if task04_4_source.count(x) == 1]
print(task04_4_result, 'result for task04_4')

# 5. Реализовать формирование списка, используя функцию range() и возможности генератора. В список должны войти
# четные числа от 100 до 1000 (включая границы). Необходимо получить результат вычисления произведения всех элементов
# списка.
task04_5_arr = [x for x in range(100, 1001) if x % 2 == 0]
print(reduce(lambda x, y: x * y, task04_5_arr), 'result for task04_5')

# 6. Реализовать два небольших скрипта: а) итератор, генерирующий целые числа, начиная с указанного,
# б) итератор, повторяющий элементы некоторого списка, определенного заранее.
# Подсказка: использовать функцию count() и cycle() модуля itertools.
# Обратите внимание, что создаваемый цикл не должен быть бесконечным. Необходимо предусмотреть условие его завершения.

# а)
print('task04_6a -- ')


def task04_6a_generator(start):
    end = start * 5
    for x in range(start, end + 1):
        if x > end:
            return (yield x)
        else:
            yield x


task04_6a_g = task04_6a_generator(10)
for el in task04_6a_g:
    print(el)

# б)
print('task04_6b -- ')


def task04_6b_generator(arr):
    c = 0
    for x in cycle(arr):
        if c > 10:
            return (yield x)
        else:
            c += 1
            yield x


task04_6b_g = task04_6b_generator([1, 2, 3])
for el in task04_6b_g:
    print(el)

# 7. Реализовать генератор с помощью функции с ключевым словом yield, создающим очередное значение. При вызове
# функции должен создаваться объект-генератор. Функция должна вызываться следующим образом: for el in fact(n).
# Функция отвечает за получение факториала числа, а в цикле необходимо выводить только первые n чисел, начиная с 1! и
# до n!. Подсказка: факториал числа n — произведение чисел от 1 до n. Например, факториал четырёх 4! = 1 * 2 * 3 * 4
# = 24.
print('task04_7 -- ')


def task04_7_generator(n):
    for x in range(0, n + 1):
        yield factorial(x)


task04_7_g = task04_7_generator(3)
for el in task04_7_g:
    print(el)
