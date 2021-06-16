from random import randint
from memory_profiler import profile
import sys

print(sys.version, sys.platform, 'Версия python и ОС')


# Исходный файл - Наивное решение

# 4. Определить, какое число в массиве встречается чаще всего.
@profile(precision=4)
def get_most_frequent(ls):
    c = 0
    n = ls[0]
    for l in ls:
        cur_frequency = ls.count(l)
        if cur_frequency > c:
            c = cur_frequency
            n = l

    return n


if __name__ == '__main__':
    get_most_frequent([randint(0, 100) for _ in range(0, 101)])

# memory_profiler
# Line #    Mem usage    Increment  Occurences   Line Contents
# ============================================================
#     11  18.5156 MiB  18.5156 MiB           1   @profile(precision=4)
#     12                                         def get_most_frequent(ls):
#     13  18.5156 MiB   0.0000 MiB           1       c = 0
#     14  18.5156 MiB   0.0000 MiB           1       n = ls[0]
#     15  18.5234 MiB   0.0000 MiB         102       for l in ls:
#     16  18.5234 MiB   0.0078 MiB         101           cur_frequency = ls.count(l)
#     17  18.5234 MiB   0.0000 MiB         101           if cur_frequency > c:
#     18  18.5234 MiB   0.0000 MiB           3               c = cur_frequency
#     19  18.5234 MiB   0.0000 MiB           3               n = l
#     20
#     21  18.5234 MiB   0.0000 MiB           1       return n

# Предполагаю, что если рассматривать затраты по памяти, то данная реализация самая экономная
# Здесь мы не создаём вспомогательных кортежей, множеств, только пару интов, не ссылаемся лишний раз на входной список
