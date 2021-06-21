import random

# 2. Отсортируйте по возрастанию методом слияния одномерный вещественный массив, заданный случайными числами на
# промежутке [0; 50). Выведите на экран исходный и отсортированный массивы.
size = 100
array = [random.randint(0, 49) for _ in range(size)]
print(array, 'Исходный массив')


def merge_sort(arr, start, end):
    if end - start > 1:
        mid = (start + end) // 2
        merge_sort(arr, start, mid)
        merge_sort(arr, mid, end)
        merge_list(arr, start, mid, end)


def merge_list(arr, start, mid, end):
    left = arr[start:mid]
    right = arr[mid:end]
    current_id = start
    start_id = 0
    end_id = 0
    while start + start_id < mid and mid + end_id < end:
        if left[start_id] <= right[end_id]:
            arr[current_id] = left[start_id]
            start_id += 1
        else:
            arr[current_id] = right[end_id]
            end_id += 1
        current_id += 1

    if start + start_id < mid:
        while current_id < end:
            arr[current_id] = left[start_id]
            start_id += 1
            current_id += 1
    else:
        while current_id < end:
            arr[current_id] = right[end_id]
            end_id += 1
            current_id += 1


merge_sort(array, 0, len(array))
print(array, 'Отсортированный массив')
