from custom_exception import CustomException
import random


# 4. Начните работу над проектом «Склад оргтехники». Создайте класс, описывающий склад. А также класс «Оргтехника»,
# который будет базовым для классов-наследников. Эти классы — конкретные типы оргтехники (принтер, сканер,
# ксерокс). В базовом классе определить параметры, общие для приведенных типов. В классах-наследниках реализовать
# параметры, уникальные для каждого типа оргтехники.

# 5. Продолжить работу над первым заданием. Разработать методы, отвечающие за приём оргтехники на склад и передачу в
# определенное подразделение компании. Для хранения данных о наименовании и количестве единиц оргтехники,
# а также других данных, можно использовать любую подходящую структуру, например словарь.

# 6. Продолжить работу над вторым заданием. Реализуйте механизм валидации вводимых пользователем данных. Например,
# для указания количества принтеров, отправленных на склад, нельзя использовать строковый тип данных. Подсказка:
# постарайтесь по возможности реализовать в проекте «Склад оргтехники» максимум возможностей, изученных на уроках по
# ООП.

class Warehouse:
    # item == (self, count) == (оргтехника, количество)
    items = []

    def add(self, obj, count):
        try:
            if not isinstance(count, int):
                raise CustomException('Это не число!')
        except CustomException as err:
            print(f'{obj.name} не был добавлен на склад. Причина: {err}')
        else:
            self.items.append((obj, count))
            print(f'{obj.name} был доставлен на склад в количестве - {count}')

    def remove(self, target_name, target_count, target_unit):
        for idx, i in enumerate(self.items):
            obj, count = i
            if obj.name == target_name:
                if target_count > count:
                    print(f'{target_name} ({target_count}): Столько у нас нет!')
                elif target_count < count:
                    self.items[idx] = (obj, count - target_count)
                else:
                    del self.items[idx]

        print(f'{target_name} ({target_count}) отправлен в подразделение {target_unit}')


class OfficeEquipment:
    def __init__(self, name, stock_number, cost):
        self.name = name
        self.stock_number = stock_number
        self.cost = cost


class Printer(OfficeEquipment):
    def __init__(self, name, stock_number, cost, print_type):
        super().__init__(name, stock_number, cost)
        self.print_type = print_type


class Scanner(OfficeEquipment):
    def __init__(self, name, stock_number, cost, scanner_type):
        super().__init__(name, stock_number, cost)
        self.scanner_type = scanner_type


class Xerox(OfficeEquipment):
    def __init__(self, name, stock_number, cost, xerox_type):
        super().__init__(name, stock_number, cost)
        self.xerox_type = xerox_type


warehouse = Warehouse()

with open('data/printers.txt', 'r', encoding='utf8') as p_file:
    for line in p_file.readlines():
        printer_item = line.split(',')
        printer = Printer(*printer_item)
        warehouse.add(printer, random.randint(20, 100))
        warehouse.remove(printer_item[0], random.randint(1, 10), f'Подразделение {random.randint(1, 10)}')

with open('data/scanners.txt', 'r', encoding='utf8') as s_file:
    for line in s_file.readlines():
        scanner_item = line.split(',')
        scanner = Scanner(*scanner_item)
        warehouse.add(scanner, random.randint(10, 50))
        warehouse.remove(scanner_item[0], random.randint(10, 20), f'Подразделение {random.randint(1, 10)}')

with open('data/xeroxes.txt', 'r', encoding='utf8') as x_file:
    for line in x_file.readlines():
        xerox_item = line.split(',')
        xerox = Xerox(*xerox_item)
        warehouse.add(xerox, random.randint(30, 40))
        warehouse.remove(xerox_item[0], random.randint(30, 40), f'Подразделение {random.randint(1, 10)}')
