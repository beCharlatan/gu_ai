# 4. Найти сумму n элементов следующего ряда чисел: 1, -0.5, 0.25, -0.125,… Количество элементов (n) вводится с клавиатуры.
n = int(input('Введите количество элементов: '))
current = 1
result = 1
step = -0.5

for i in range(n - 1):
  current *= step
  result += current

print(result)
