# 5. Пользователь вводит номер буквы в алфавите. Определить, какая это буква.
letterCode = int(input('Введите номер буквы: ')) + 96

if letterCode < 97 or letterCode > 122:
  print('Что-то нет такой строчной буквы в латинском алфавите')
else:
  letter = chr(letterCode)
  print(f'Нашлась буква: {letter}')