import random

# 3. Массив размером 2m + 1, где m — натуральное число, заполнен случайным образом. Найдите в массиве медиану.
# Медианой называется элемент ряда, делящий его на две равные части: в одной находятся элементы, которые не меньше
# медианы, в другой — не больше медианы. Примечание: задачу можно решить без сортировки исходного массива. Но если
# это слишком сложно, используйте метод сортировки, который не рассматривался на уроках (сортировка слиянием также
# недопустима).
m = 10
array = [random.randint(0, 100) for _ in range(2 * m + 1)]
print(array, 'Исходный массив')


def median_select(arr, n):
    if len(arr) == 1:
        return arr[0]

    pivot = random.choice(arr)

    lowers = [i for i in arr if i < pivot]
    highers = [i for i in arr if i > pivot]
    pivots = [i for i in arr if i == pivot]

    if n < len(lowers):
        return median_select(lowers, n)
    elif n < len(lowers) + len(pivots):
        return pivots[0]
    else:
        return median_select(highers, n - len(lowers) - len(pivots))


def get_median(arr):
    return median_select(arr, len(arr) / 2)


print(get_median(array), 'Медиана')
