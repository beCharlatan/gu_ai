from collections import deque

'''2. Написать программу сложения и умножения двух шестнадцатеричных чисел. При этом каждое число представляется как 
массив, элементы которого — цифры числа. Например, пользователь ввёл A2 и C4F. Нужно сохранить их как [‘A’, 
‘2’] и [‘C’, ‘4’, ‘F’] соответственно. Сумма чисел из примера: [‘C’, ‘F’, ‘1’], произведение - [‘7’, ‘C’, ‘9’, ‘F’, 
‘E’]. '''

# декодер
# чтобы получить числовое выражение - .index(str)
# чтобы получить строковой литерал - обращаемся по индексу числового выражения
decoder = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F']
base = 16


def _sum(x, y):
    result = deque()
    higher_order_num = 0  # остаток, который идёт в разряд выше

    if len(x) > len(y):
        x, y = deque(x), deque(y)
    else:
        x, y = deque(y), deque(x)

    while x:
        if y:
            current = decoder.index(x.pop()) + decoder.index(y.pop()) + higher_order_num
        else:
            current = decoder.index(x.pop()) + higher_order_num

        higher_order_num = 0  # сбрасываем остаток, здесь он больше не нужен

        if current < base:
            result.appendleft(decoder[current])
        else:
            result.appendleft(decoder[current - base])
            higher_order_num = 1

    if higher_order_num:
        result.appendleft('1')

    return list(result)


def _mul(x, y):
    result = deque()
    higher_order_num = 0
    spam = deque(deque() for _ in range(len(y)))

    y = deque(y)

    for i in range(len(y)):
        n = decoder.index(y.pop())

        for j in x[::-1]:
            k = decoder.index(j)
            spam[i].appendleft(n * k)

        for _ in range(i):
            spam[i].append(0)  # когда мы умножали столбиком, сдвигали элементы суммирования

    for _ in range(len(spam[-1])):
        res = higher_order_num

        for k in spam:
            if k:
                res += k.pop()

        if res < base:
            result.appendleft(decoder[res])
        else:
            result.appendleft(decoder[res % base])
            higher_order_num = res // base

    if higher_order_num:
        result.appendleft(decoder[higher_order_num])

    return list(result)


a = list(input('Введите первое число: ').upper())
b = list(input('Введите второе число: ').upper())

print(_sum(a, b), 'sum')
print(_mul(a, b), 'multiply')
