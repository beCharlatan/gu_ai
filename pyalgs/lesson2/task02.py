# 2. Посчитать четные и нечетные цифры введенного натурального числа. Например, если введено число 34560, в нем 3 четные цифры (4, 6 и 0) и 2 нечетные (3 и 5).
str = input('Введите натуральное число: ')
even = ''
odd = ''
for digitStr in str:
  digit = int(digitStr)
  if digit % 2 == 0:
    even += f' {digitStr}'
  else:
    odd += f' {digitStr}'

print(f'В числе {str}:{even} - четные,{odd} - нечетные')


