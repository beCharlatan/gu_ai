from random import randint


def get_min_and_max_id(ls):
  min_max_ids = (0, 0)
  for i in range(0, len(ls)):
    l = ls[i]
    _min = ls[min_max_ids[0]]
    _max = ls[min_max_ids[1]]

    if l > _max:
      min_max_ids = (min_max_ids[0], i)

    if l < _min:
      min_max_ids = (i, min_max_ids[1])

  return min_max_ids

# 3. В массиве случайных целых чисел поменять местами минимальный и максимальный элементы.
if __name__ == '__main__':
  ns = [randint(-100, 100) for _ in range(0, 21)]

  print(ns, 'before')

  min_id, max_id = get_min_and_max_id(ns)
  ns[min_id], ns[max_id] = ns[max_id], ns[min_id]

  print(ns, 'after')