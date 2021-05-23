# 1. Выполнить логические побитовые операции «И», «ИЛИ» и др. над числами 5 и 6. Выполнить над числом 5 побитовый сдвиг вправо и влево на два знака.
a = 5
b = 6
_b = 2

result1 = a & b
result2 = a | b
result3 = a ^ b
result4 = ~a
result5 = ~b
result6 = a << _b
result7 = a >> _b

print(result1, ' = ', '5 & 6')
print(result2, ' = ', '5 | 6')
print(result3, ' = ', '5 ^ 6')
print(result4, ' = ', '~5')
print(result5, ' = ', '~6')
print(result6, ' = ', '5 << 2')
print(result7, ' = ', '5 >> 2')