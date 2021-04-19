# 1. Создать список и заполнить его элементами различных типов данных. Реализовать скрипт проверки типа данных
# каждого элемента. Использовать функцию type() для проверки типа. Элементы списка можно не запрашивать у
# пользователя, а указать явно, в программе.
# test = ['1', 2, 3.56, ('Hello', 'world'), lambda x: x * 2, True, [1, 2, 3, 4]]
# print(
#     test,
#     list(map(type, test)),
#     sep='\n'
# )

# 2. Для списка реализовать обмен значений соседних элементов, т.е. Значениями обмениваются элементы с индексами 0 и
# 1, 2 и 3 и т.д. При нечетном количестве элементов последний сохранить на своем месте. Для заполнения списка
# элементов необходимо использовать функцию input().
# input_list = input('Введите элементы списка через пробел: ').split()
# print(input_list, 'before')
# for i in range(0, len(input_list) - 1, 2):
#     input_list[i], input_list[i + 1] = input_list[i + 1], input_list[i]
#
# print(input_list, 'after')

# 3. Пользователь вводит месяц в виде целого числа от 1 до 12. Сообщить к какому времени года относится месяц (зима,
# весна, лето, осень). Напишите решения через list и через dict.
# seasons_list = [12, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# seasons_dict = {
#     'Зима': (1, 2, 12),
#     'Весна': (3, 4, 5),
#     'Лето': (6, 7, 8),
#     'Осень': (9, 10, 11),
# }
# month = int(input('Выберите порядковый номер месяца: '))
#
# # list:
# try:
#     m_idx = seasons_list.index(month)
# except ValueError:
#     m_idx = -1
#
# if m_idx == -1:
#     print(':(')
# elif m_idx < 3:
#     print('Зима')
# elif m_idx < 6:
#     print('Весна')
# elif m_idx < 9:
#     print('Лето')
# else:
#     print('Осень')
#
# # dict:
# for k in seasons_dict.keys():
#     if month in seasons_dict[k]:
#         print(k, 'by dict')

# 4. Пользователь вводит строку из нескольких слов, разделённых пробелами. Вывести каждое слово с новой строки.
# Строки необходимо пронумеровать. Если в слово длинное, выводить только первые 10 букв в слове.
# arr = input('Введите слова через пробел: ').split()
# arr = list(map(lambda x: x[:10], arr))
# print('\n'.join(arr))

# 5. Реализовать структуру «Рейтинг», представляющую собой не возрастающий набор натуральных чисел. У пользователя
# необходимо запрашивать новый элемент рейтинга. Если в рейтинге существуют элементы с одинаковыми значениями,
# то новый элемент с тем же значением должен разместиться после них.
# Подсказка. Например, набор натуральных чисел: 7, 5, 3, 3, 2.
# Пользователь ввел число 3.
# Результат: 7, 5, 3, 3, 3, 2.
# Пользователь ввел число 8.
# Результат: 8, 7, 5, 3, 3, 2.
# Пользователь ввел число 1.
# Результат: 7, 5, 3, 3, 2, 1.
# Набор натуральных чисел можно задать непосредственно в коде, например, my_list = [7, 5, 3, 3, 2].
# my_list = [7, 5, 3, 3, 2]
# new_element = int(input('Введите число: '))
# my_list.append(new_element)
# print(sorted(my_list, reverse=True))

# 6. * Реализовать структуру данных «Товары». Она должна представлять собой список кортежей. Каждый кортеж хранит
# информацию об отдельном товаре. В кортеже должно быть два элемента — номер товара и словарь с параметрами (
# характеристиками товара: название, цена, количество, единица измерения). Структуру нужно сформировать программно,
# т.е. запрашивать все данные у пользователя.
# Пример готовой структуры:

# test_list = [
#     (1, {"название": "компьютер", "цена": 20000, "количество": 5, "ед": "шт."}),
#     (2, {"название": "принтер", "цена": 6000, "количество": 2, "ед": "шт."}),
#     (3, {"название": "сканер", "цена": 2000, "количество": 7, "ед": "шт."})
# ]

count = 1
test_list = []

while count <= 3:
    params = input('Введите параметры товара через запятую (Название, Цена, Количество, Ед): ').split(',')
    test_list.append((count, {"название": params[0], "цена": params[1], "количество": params[2], "eд": params[3]}))
    count += 1

print(test_list, 'test')


# Необходимо собрать аналитику о товарах. Реализовать словарь, в котором каждый ключ — характеристика товара,
# например название, а значение — список значений-характеристик, например список названий товаров.
# Пример:

# test_dict = {
#     "название": ["компьютер", "принтер", "сканер"],
#     "цена": [20000, 6000, 2000],
#     "количество": [5, 2, 7],
#     "ед": ["шт."]
# }

def fold_list(ll, key):
    return list(map(lambda x: x[1][key], ll))


test_dict = {
    "название": fold_list(test_list, "название"),
    "цена": fold_list(test_list, "цена"),
    "количество": fold_list(test_list, "количество"),
    "ед": fold_list(test_list, "ед")
}

print(test_dict, 'dict')
