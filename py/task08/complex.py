# 7. Реализовать проект «Операции с комплексными числами». Создайте класс «Комплексное число», реализуйте перегрузку
# методов сложения и умножения комплексных чисел. Проверьте работу проекта, создав экземпляры класса (комплексные
# числа) и выполнив сложение и умножение созданных экземпляров. Проверьте корректность полученного результата.
class Complex:
    def __init__(self, re, im):
        self.re = re
        self.im = im

    def __add__(self, other):
        return Complex(self.re + other.re, self.im + other.im)

    def __mul__(self, other):
        return Complex(self.re * other.re, self.im * other.im)

    def __str__(self):
        if self.im == 0:
            result = f'{self.re} + 0i'
        elif self.re == 0:
            if self.im >= 0:
                result = f'0 + {self.im}i'
            else:
                result = f'0 - {abs(self.im)}i'
        elif self.im > 0:
            result = f'{self.re} + {self.im}i'
        else:
            result = f'{self.re} - {abs(self.im)}i'
        return result


x = Complex(2, 1)
y = Complex(5, 6)
print(*map(str, [x + y, x * y]), sep='\n')
