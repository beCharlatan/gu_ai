# 7. Написать программу, доказывающую или проверяющую, что для множества натуральных чисел выполняется равенство: 1+2+...+n = n(n+1)/2, где n — любое натуральное число.
n = int(input('Введите n: '))
expect = 0
expected = n * (n + 1) / 2
for i in range(n):
  expect += i + 1

if float(expect) == expected:
  print('Проверено')