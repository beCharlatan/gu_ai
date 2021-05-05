import sys


# 1. Реализовать скрипт, в котором должна быть предусмотрена функция расчета заработной платы сотрудника. В расчете
# необходимо использовать формулу: (выработка в часах * ставка в час) + премия. Для выполнения расчета для конкретных
# значений необходимо запускать скрипт с параметрами.
def fn(_output, _rate, _prize):
    return (_output * _rate) + _prize


try:
    output, rate, prize = map(int, sys.argv[1:4])
    result = fn(output, rate, prize)
    print(result, 'result')
except ValueError as e:
    print(e, ' -- some trouble')
