# 8. Посчитать, сколько раз встречается определенная цифра в введенной последовательности чисел. Количество вводимых чисел и цифра, которую необходимо посчитать, задаются вводом с клавиатуры.
n = input('Введите число: ')
searchable = input('Введите искомую цифру: ')
counter = 0

for i in n:
  if i == searchable:
    counter += 1

print(counter)