import re

# 9. Среди натуральных чисел, которые были введены, найти наибольшее по сумме цифр. Вывести на экран это число и сумму его цифр.
ns = input('Введите натуральные числа через запятую: ')
ns = re.sub(r'\s+', '', ns)
ns = ns.split(',')
result = (None, 0)
for n in ns:
  sum = 0
  for i in range(len(n)):
    sum += int(n[i])

  if sum > result[1]:
    result = (n, sum)

print(result)