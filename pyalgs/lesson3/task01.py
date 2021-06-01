# 1. В диапазоне натуральных чисел от 2 до 99 определить, сколько из них кратны каждому из чисел в диапазоне от 2 до 9. Примечание: 8 разных ответов.
result = {}

for n in range(2, 100):
  for k in range(2, 10):
    if n % k == 0:
      if k in result:
        result[k] = result[k] + 1
      else:
        result[k] = 1


for key, value in result.items():
  print(f'{value} чисел кратны {key}')