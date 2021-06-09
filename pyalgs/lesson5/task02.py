from collections import deque

'''
2. Написать программу сложения и умножения двух шестнадцатеричных чисел. При этом каждое число представляется как массив, элементы которого — цифры числа.
Например, пользователь ввёл A2 и C4F. Нужно сохранить их как [‘A’, ‘2’] и [‘C’, ‘4’, ‘F’] соответственно. Сумма чисел из примера: [‘C’, ‘F’, ‘1’], произведение - [‘7’, ‘C’, ‘9’, ‘F’, ‘E’].
'''

# декодер
# чтобы получить числовое выражение - .index(str)
# чтобы получить строковой литерал - обращаемся по индексу числового выражения
decoder = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F']

def _sum(x, y):
  result = deque()
  higher_order_num = 0 # остаток, который идёт в разряд выше

  if len(x) > len(y):
    x, y = deque(x), deque(y)
  else:
    x, y = deque(y), deque(x)

  while x:
    if y:
      current = decoder.index(x.pop()) + decoder.index(y.pop()) + higher_order_num
    else:
      current = decoder.index(x.pop()) + higher_order_num

    higher_order_num = 0 # сбрасываем остаток, здесь он больше не нужен

    if current < 16:
      result.appendleft(decoder[current])
    else:
      result.appendleft(decoder[current - 16])
      higher_order_num = 1

  if higher_order_num:
    result.appendleft('1')

  return list(result)

def _mul(x, y):
  result = deque()
  return list(result)

a = list(input('Введите первое число: ').upper())
b = list(input('Введите второе число: ').upper())

print(_sum(a, b))

