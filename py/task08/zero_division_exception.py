from custom_exception import CustomException
# 2. Создайте собственный класс-исключение, обрабатывающий ситуацию деления на нуль. Проверьте его работу на данных,
# вводимых пользователем. При вводе пользователем нуля в качестве делителя программа должна корректно обработать эту
# ситуацию и не завершиться с ошибкой.
a = 20
b = int(input(f'Делимое = {a}. Введите делитель: '))
c = 0
try:
    if b == 0:
        raise CustomException('Нельзя делить на ноль!')
    else:
        c = a / b
except CustomException as err:
    print(err)
else:
    print(f'Деление прошло успешно - {c}')
