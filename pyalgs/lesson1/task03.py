from random import randint, uniform, choice
from string import ascii_lowercase
# 3. Написать программу, которая генерирует в указанных пользователем границах:
# a. случайное целое число,
# b. случайное вещественное число,
# c. случайный символ.
# Для каждого из трех случаев пользователь задает свои границы диапазона. Например, если надо получить случайный символ от 'a' до 'f', то вводятся эти символы. Программа должна вывести на экран любой символ алфавита от 'a' до 'f' включительно.
intMinRange = int(input('Введите нижнюю границу целого числа: '))
intMaxRange = int(input('Введите верхнюю границу целого числа: '))
randomInt = randint(intMinRange, intMaxRange)

print('Случайное целое число:', randomInt)

floatMinRange = float(input('Введите нижнюю границу вещественного числа: '))
floatMaxRange = float(input('Введите верхнюю границу вещественного числа: '))
randomFloat = uniform(floatMinRange, floatMaxRange)

print('Случайное вещественное число:', randomFloat)

letterMinRangeCode = ord(input('Введите "минимальный" символ: ')) - 97
letterMaxRangeCode = ord(input('Введите "максимальный" символ: ')) - 96
randomLetter = choice(ascii_lowercase[letterMinRangeCode:letterMaxRangeCode])

print('Случайный символ:', randomLetter)