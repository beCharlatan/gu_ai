from random import randint
from memory_profiler import profile
import sys

print(sys.version, sys.platform, 'Версия python и ОС')


# Рефакторинг №1 - решение через метод max и кастомный ключ
# Массив данных остаётся неизменным, поэтому вместо списка можно использовать кортеж
# Избавились от вспомогательных переменных `c` и `n`. Вместо этого забили память множеством из входного массива

# 4. Определить, какое число в массиве встречается чаще всего.
@profile(precision=4)
def get_most_frequent(ls):
    print(sys.getsizeof(ls), 'Размер входного массива')
    print(sys.getsizeof(set(ls)), 'Размер множества')
    print(sys.getsizeof(ls.count(ls[0] * len(ls))), 'Размер временной переменной')
    return max(set(ls), key=ls.count)


if __name__ == '__main__':
    get_most_frequent(tuple(randint(0, 100) for _ in range(0, 101)))

# Занятая память
# 848 Размер входного массива
# 2264 Размер множества
# 24 Размер временной переменной

# memory_profiler
# Line #    Mem usage    Increment  Occurences   Line Contents
# ============================================================
#     13  18.5156 MiB  18.5156 MiB           1   @profile(precision=4)
#     14                                         def get_most_frequent(ls):
#     15  18.5234 MiB   0.0078 MiB           1       print(sys.getsizeof(ls), 'Размер входного массива')
#     16  18.5273 MiB   0.0039 MiB           1       print(sys.getsizeof(set(ls)), 'Размер множества')
#     17  18.5312 MiB   0.0039 MiB           1       print(sys.getsizeof(ls.count(ls[0] * len(ls))), 'Размер временной переменной')
#     18  18.5352 MiB   0.0039 MiB           1       return max(set(ls), key=ls.count)
