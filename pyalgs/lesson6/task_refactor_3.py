from random import randint
from statistics import mode
from memory_profiler import profile
import sys

print(sys.version, sys.platform, 'Версия python и ОС')


# Рефакторинг №3 - Решение через mode из библиотеки statistics
# Массив данных остаётся неизменным, поэтому вместо списка можно использовать кортеж
# Избавились от вспомогательных переменных `c` и `n`.
# Здесь плюс в том, что мы не создаём дополнительных переменных

# 4. Определить, какое число в массиве встречается чаще всего.
@profile(precision=4)
def get_most_frequent(ls):
    # Ну, если посмотреть, то под капотом функция mode создаёт счётчик как в task_refactor_2.py:
    # def mode(data):
    #     data = iter(data)
    #     pairs = Counter(data).most_common(1)
    #     try:
    #         return pairs[0][0]
    #     except IndexError:
    #         raise StatisticsError('no mode for empty data') from None
    return mode(ls)


if __name__ == '__main__':
    get_most_frequent(tuple(randint(0, 100) for _ in range(0, 101)))

# memory_profiler
# Line #    Mem usage    Increment  Occurences   Line Contents
# ============================================================
#     15  18.8945 MiB  18.8945 MiB           1   @profile(precision=4)
#     16                                         def get_most_frequent(ls):
#     25  18.9062 MiB   0.0117 MiB           1       return mode(ls)
