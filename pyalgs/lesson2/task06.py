from random import randint
# 6. В программе генерируется случайное целое число от 0 до 100. Пользователь должен его отгадать не более чем за 10 попыток. После каждой неудачной попытки должно сообщаться, больше или меньше введенное пользователем число, чем то, что загадано. Если за 10 попыток число не отгадано, вывести ответ.
n = randint(0, 100)
tries = 1
while tries <= 10:
  predict = int(input('Какое число?: '))
  if predict < n:
    print('Больше')
  elif predict > n:
    print('Меньше')
  else:
    print('Победа!')
    break

  tries += 1
else:
  print('Попыточки закончились')
