from random import randint


# 5. В массиве найти максимальный отрицательный элемент. Вывести на экран его значение и позицию в массиве.
def get_max_negative(ls):
  print(ls, 'Исходный листинг')
  max_negative = (0, None)
  for i in range(0, len(ls)):
    pretend = ls[i]

    if pretend < 0 and (max_negative[1] is None or pretend > max_negative[1]):
      max_negative = (i, pretend)

  if max_negative[1] is None:
    raise ValueError('Не удалось найти отрицательный элемент')

  return max_negative


print(get_max_negative([randint(-100, 100) for _ in range(0, 101)]))