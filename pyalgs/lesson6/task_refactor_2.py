from random import randint
from memory_profiler import profile
from collections import Counter
import sys

print(sys.version, sys.platform, 'Версия python и ОС')


# Рефакторинг №2 - Решение через Counter
# Массив данных остаётся неизменным, поэтому вместо списка можно использовать кортеж
# Избавились от вспомогательных переменных `c` и `n`. Вместо проебрели переменную счётчика `counter`
# Здесь плюс в том, что программа возвращает пару значений самого повторяющегося числа и количества повторений

# 4. Определить, какое число в массиве встречается чаще всего.
@profile(precision=4)
def get_most_frequent(ls):
    counter = Counter(ls)
    print(sys.getsizeof(counter), 'Размер счётчика')
    # Counter.most_common под капотом
    # def most_common(self, n=None):
    #     if n is None:
    #         return sorted(self.items(), key=_itemgetter(1), reverse=True)
    #     return _heapq.nlargest(n, self.items(), key=_itemgetter(1))
    return counter.most_common(1)[0]


if __name__ == '__main__':
    get_most_frequent(tuple(randint(0, 100) for _ in range(0, 101)))

# Занятая память
# 2288 Размер счётчика

# memory_profiler
# Line #    Mem usage    Increment  Occurences   Line Contents
# ============================================================
#     15  18.5469 MiB  18.5469 MiB           1   @profile(precision=4)
#     16                                         def get_most_frequent(ls):
#     17  18.5547 MiB   0.0078 MiB           1       counter = Counter(ls)
#     18  18.5547 MiB   0.0000 MiB           1       print(sys.getsizeof(counter), 'Размер счётчика')
#     24  18.5586 MiB   0.0039 MiB           1       return counter.most_common(1)[0]
