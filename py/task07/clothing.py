# 2. Реализовать проект расчета суммарного расхода ткани на производство одежды. Основная сущность (класс) этого
# проекта — одежда, которая может иметь определенное название. К типам одежды в этом проекте относятся пальто и
# костюм. У этих типов одежды существуют параметры: размер (для пальто) и рост (для костюма). Это могут быть обычные
# числа: V и H, соответственно. Для определения расхода ткани по каждому типу одежды использовать формулы: для пальто
# (V/6.5 + 0.5), для костюма (2 * H + 0.3). Проверить работу этих методов на реальных данных. Реализовать общий
# подсчет расхода ткани. Проверить на практике полученные на этом уроке знания: реализовать абстрактные классы для
# основных классов проекта, проверить на практике работу декоратора @property.
_v = 5.32
_h = 6.01


class Clothing:
    def __init__(self):
        self.data = []

    def add(self, obj):
        self.data.append(obj)

    def get_cloth(self):
        result = 0
        for i in self.data:
            result += i.cloth

        return result


class Coat:
    def __init__(self, name, v):
        self.name = name
        self.type = 'coat'
        self.v = v

    @property
    def cloth(self):
        return self.v / 6.5 + 0.5


class Suit:
    def __init__(self, name, h):
        self.name = name
        self.type = 'suit'
        self.h = h

    @property
    def cloth(self):
        return 2 * self.h + 0.3


c = Clothing()
suit = Suit('Костюм', _h)
coat = Coat('Пальто', _v)
c.add(suit)
c.add(coat)
cloth = c.get_cloth()
print(cloth)