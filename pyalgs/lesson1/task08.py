# 8. Вводятся три разных числа. Найти, какое из них является средним (больше одного, но меньше другого).
a = int(input('Введите первое число: '))
b = int(input('Введите второе число: '))
c = int(input('Введите третье число: '))

if a == b or b == c or a == c:
  print('Нет среднего числа')
else:
  if (a > b and a < c) or (a < b and a > c):
    print(a)
  elif (b > a and b < c) or (b < a and b > c):
    print(b)
  else:
    print(c)