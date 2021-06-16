from random import randint
from memory_profiler import profile
import sys

print(sys.version, sys.platform, 'Версия python и ОС')


# Рефакторинг №4 - Решение через сортировку массива
# Массив данных остаётся неизменным, поэтому вместо списка можно использовать кортеж

# 4. Определить, какое число в массиве встречается чаще всего.
@profile(precision=4)
def get_most_frequent(ls):
    print(sys.getsizeof(set(ls)), 'Размер множества')
    print(sys.getsizeof(tuple((i, ls.count(i)) for i in set(ls))), 'Размер кортежа')
    print(sys.getsizeof(sorted(tuple((i, ls.count(i)) for i in set(ls)))), 'Размер вспомогательного списка')
    return sorted(tuple((i, ls.count(i)) for i in set(ls)), key=lambda t: t[1])[-1]


if __name__ == '__main__':
    get_most_frequent(tuple(randint(0, 100) for _ in range(0, 101)))

# Занятая память
# 2264 Размер множества
# 568 Размер кортежа
# 696 Размер вспомогательного списка

# memory_profiler
# Line #    Mem usage    Increment  Occurences   Line Contents
# ============================================================
#     12  18.5312 MiB  18.5312 MiB           1   @profile(precision=4)
#     13                                         def get_most_frequent(ls):
#     17  18.5469 MiB   0.0000 MiB         267       return sorted(tuple((i, ls.count(i)) for i in set(ls)), key=lambda t: t[1])[-1]
