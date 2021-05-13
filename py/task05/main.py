import re
import json

# 1. Создать программно файл в текстовом формате, записать в него построчно данные, вводимые пользователем. Об
# окончании ввода данных свидетельствует пустая строка.
lines = []
while True:
    line = input()
    if line == '':
        break
    lines.append(line + '\n')

with open('task05_1.txt', 'w', encoding='utf-8') as f:
    f.writelines(lines)

# 2. Создать текстовый файл (не программно), сохранить в нем несколько строк, выполнить подсчет количества строк,
# количества слов в каждой строке.
with open('task05_2.txt') as f:
    linesCount = 0
    linesDict = {}
    for line in f.readlines():
        wordsCount = len(line.split())
        linesDict[linesCount + 1] = wordsCount
        linesCount += 1

    print(linesCount, ' -- всего строк')

    for k, v in linesDict.items():
        print(f'В строке {k} -- {v} слов')

# 3. Создать текстовый файл (не программно), построчно записать фамилии сотрудников и величину их окладов.
# Определить, кто из сотрудников имеет оклад менее 20 тыс., вывести фамилии этих сотрудников. Выполнить подсчет
# средней величины дохода сотрудников.
with open('task05_3.txt', encoding='utf-8') as f:
    poors = []
    sumSalary = 0
    rowsCount = 0
    for line in f.readlines():
        name, salary = line.split()
        rowsCount += 1
        sumSalary += int(salary)
        if int(salary) < 20000:
            poors.append(name)

    poorsStr = ', '.join(poors)
    print(sumSalary/rowsCount, ' -- средняя зарплата')
    print(f'Сотрудники, получающие менее 20 тыс.: {poorsStr}')

# 4. Создать (не программно) текстовый файл со следующим содержимым: One — 1 Two — 2 Three — 3 Four — 4. Необходимо
# написать программу, открывающую файл на чтение и считывающую построчно данные. При этом английские числительные
# должны заменяться на русские. Новый блок строк должен записываться в новый текстовый файл.
decoder = {
    '1': 'Один',
    '2': 'Два',
    '3': 'Три',
    '4': 'Четыре',
}
lines = []
with open('task05_4.txt', encoding='utf-8') as f:
    for line in f.readlines():
        en, key = line.split(' — ')
        ru = decoder[key.strip()]
        lines.append(f'{en} — {ru}\n')

with open('task05_4_ru.txt', 'w', encoding='utf-8') as f:
    f.writelines(lines)

# 5. Создать (программно) текстовый файл, записать в него программно набор чисел, разделенных пробелами. Программа
# должна подсчитывать сумму чисел в файле и выводить ее на экран.
numsStr = '1 1 2 3 5 8 13 21'
with open('task05_5.txt', 'w+') as f:
    f.writelines(numsStr)
    f.seek(0)
    line = f.read().strip()
    nums = list(map(int, line.split()))
    print(sum(nums), ' -- сумма чисел')

# 6. Необходимо создать (не программно) текстовый файл, где каждая строка описывает учебный предмет и наличие
# лекционных, практических и лабораторных занятий по этому предмету и их количество. Важно, чтобы для каждого
# предмета не обязательно были все типы занятий. Сформировать словарь, содержащий название предмета и общее
# количество занятий по нему. Вывести словарь на экран. Примеры строк файла: Информатика: 100(л) 50(пр) 20(лаб).
# Физика: 30(л) — 10(лаб) Физкультура: — 30(пр) —
#
# Пример словаря:
# {“Информатика”: 170, “Физика”: 40, “Физкультура”: 30}
with open('task05_6.txt', encoding='utf-8') as f:
    schedule = {}
    for line in f:
        subject, rest = line.split(':')
        lessons_count_list = map(int, re.findall(r'\d+', rest))
        lessons_count_sum = sum(lessons_count_list)
        schedule[subject] = lessons_count_sum

    print(schedule)

# 7. Создать (не программно) текстовый файл, в котором каждая строка должна содержать данные о фирме: название,
# форма собственности, выручка, издержки. Пример строки файла: firm_1 ООО 10000 5000. Необходимо построчно прочитать
# файл, вычислить прибыль каждой компании, а также среднюю прибыль. Если фирма получила убытки, в расчет средней
# прибыли ее не включать. Далее реализовать список. Он должен содержать словарь с фирмами и их прибылями,
# а также словарь со средней прибылью. Если фирма получила убытки, также добавить ее в словарь (со значением
# убытков). Пример списка: [{“firm_1”: 5000, “firm_2”: 3000, “firm_3”: 1000}, {“average_profit”: 2000}]. Итоговый
# список сохранить в виде json-объекта в соответствующий файл. Пример json-объекта: [{"firm_1": 5000, "firm_2": 3000,
# "firm_3": 1000}, {"average_profit": 2000}]
result = []
with open('task05_7.txt', encoding='utf-8') as f:
    stats = {}
    firms_dict = {}
    firms_count = 0
    sum_profit = 0
    for line in f.readlines():
        firm_name, code, proceeds, costs = line.split()
        profit = int(proceeds) - int(costs)
        firms_dict[firm_name] = profit
        if profit > 0:
            firms_count += 1
            sum_profit += profit

    stats['average_profit'] = sum_profit / firms_count
    result = [firms_dict, stats]

with open('task05_7.json', 'w') as f:
    json.dump(result, f)