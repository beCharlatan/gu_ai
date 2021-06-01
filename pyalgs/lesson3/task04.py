from random import randint


# 4. Определить, какое число в массиве встречается чаще всего.
def get_most_frequent(ls):
  print(ls, 'Исходный листинг')
  c = 0
  n = ls[0]
  for l in ls:
    cur_frequency = ls.count(l)
    if cur_frequency > c:
      c = cur_frequency
      n = l

  return n


print(get_most_frequent([randint(0, 100) for _ in range(0, 101)]))