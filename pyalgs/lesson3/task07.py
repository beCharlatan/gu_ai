from random import randint

# 7. В одномерном массиве целых чисел определить два наименьших элемента. Они могут быть как равны между собой (оба минимальны), так и различаться.
ls = [randint(-100, 100) for _ in range(0, 101)]
print(ls, 'Исходнй листинг')
_len = len(ls)

for i in range(_len - 1):
    for j in range(_len - i - 1):
        if ls[j] > ls[j+1]:
            ls[j], ls[j+1] = ls[j+1], ls[j]

print((ls[0], ls[1]))