from random import randint
from task03 import get_min_and_max_id
# 6. В одномерном массиве найти сумму элементов, находящихся между минимальным и максимальным элементами. Сами минимальный и максимальный элементы в сумму не включать.
ls = [randint(0, 100) for _ in range(0, 101)]
print(ls, 'Исходный листинг')

min_id, max_id = get_min_and_max_id(ls)
_sum = 0

for i in range(min_id + 1, max_id):
  _sum += ls[i]

print(_sum)