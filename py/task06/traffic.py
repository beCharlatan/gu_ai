import time

# 1. Создать класс TrafficLight (светофор) и определить у него один атрибут color (цвет) и метод running (запуск).
# Атрибут реализовать как приватный. В рамках метода реализовать переключение светофора в режимы: красный, желтый,
# зеленый. Продолжительность первого состояния (красный) составляет 7 секунд, второго (желтый) — 2 секунды,
# третьего (зеленый) — на ваше усмотрение. Переключение между режимами должно осуществляться только в указанном
# порядке (красный, желтый, зеленый). Проверить работу примера, создав экземпляр и вызвав описанный метод.
helper = {
    'red': {
        'target': 'yellow',
        'offset': 7
    },
    'yellow': {
        'target': 'green',
        'offset': 2
    },
    'green': {
        'target': 'red',
        'offset': 10
    },
}


class TrafficLight:
    __color = 'red'

    def running(self):
        while True:
            self.__color = helper[self.__color]['target']
            print(self.__color, 'color')
            time.sleep(helper[self.__color]['offset'])


t = TrafficLight()
t.running()
