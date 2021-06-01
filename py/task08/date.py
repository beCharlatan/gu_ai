# 1. Реализовать класс «Дата», функция-конструктор которого должна принимать дату в виде строки формата
# «день-месяц-год». В рамках класса реализовать два метода. Первый, с декоратором @classmethod, должен извлекать
# число, месяц, год и преобразовывать их тип к типу «Число». Второй, с декоратором @staticmethod, должен проводить
# валидацию числа, месяца и года (например, месяц — от 1 до 12). Проверить работу полученной структуры на реальных
# данных.
class Date:
    default_date_str = '12-01-2021'

    def __init__(self, date_str):
        self.date_str = date_str

    @classmethod
    def get_date(cls):
        day, month, year = map(int, cls.default_date_str.split('-'))
        return day, month, year

    @staticmethod
    def validate_date(_date):
        _day, _month, _year = _date
        day_validation = True
        month_validation = True
        year_validation = True

        if _day < 0 or _day > 31:
            day_validation = False

        if _month < 0 or _month > 12:
            month_validation = False

        if _year < 0:
            year_validation = True

        return day_validation, month_validation, year_validation


date = Date.get_date()
print(date)
is_day_valid, is_month_valid, is_year_valid = Date.validate_date(date)
print('Валдиный день' if is_day_valid else 'Невалидный день')
print('Валдиный месяц' if is_month_valid else 'Невалидный месяц')
print('Валдиный год' if is_year_valid else 'Невалидный год')
