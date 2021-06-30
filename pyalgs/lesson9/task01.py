import hashlib


# 1. Определение количества различных подстрок с использованием хеш-функции. Пусть на вход функции дана строка.
# Требуется вернуть количество различных подстрок в этой строке. Примечания: * в сумму не включаем пустую строку и
# строку целиком; * без использования функций для вычисления хэша (hash(), sha1() или любой другой из модуля hashlib
# задача считается не решённой.


def get_substrs(string):
    assert len(string) > 0, 'Строка не может быть пустой'
    substrs = set()
    length = len(string)

    for i in range(length):
        for j in range(length - 1 if i == 0 else length, i, -1):
            substr = string[i:j]
            hash_substr = hashlib.sha1(substr.encode('utf-8')).hexdigest()
            substrs.add(hash_substr)

    return substrs


_string = input('Введите строку: ')
substrings = get_substrs(_string)
print(len(substrings), 'Количество подстрок')
