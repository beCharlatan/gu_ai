# 3. Сформировать из введенного числа обратное по порядку входящих в него цифр и вывести на экран. Например, если введено число 3486, надо вывести 6843.
ns = input('Введите число: ')
result = ''
for n in ns:
  result = f'{n}{result}'

print(result)