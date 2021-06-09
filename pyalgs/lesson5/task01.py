from collections import Counter

'''
1. Пользователь вводит данные о количестве предприятий, их наименования и прибыль за четыре квартала для каждого предприятия. Программа должна определить среднюю прибыль (за год для всех предприятий) и отдельно вывести наименования предприятий, чья прибыль выше среднего и ниже среднего.
'''

companies = Counter()

companiesCount = int(input('Сколько компаний?: '))

for i in range(companiesCount):
  new_company_name = input('Наименование компании: ')
  new_company_profit = float(input('Прибыль компании за год: '))
  companies[new_company_name] = new_company_profit


avg_profit = sum(companies.values()) / companiesCount

for key, value in companies.items():
  if value <= avg_profit:
    companies[key] = -value

print('Средняя прибыль', avg_profit)

print(list(+companies), 'Выше среднего')
print(list(-companies), 'Ниже среднего')
