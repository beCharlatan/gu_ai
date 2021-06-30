# 2. Закодируйте любую строку по алгоритму Хаффмана.
def get_freq(_ss):
    c = {}
    for s in _ss:
        c[s] = c[s] + 1 if s in c else 1
    return sorted(c.items(), key=lambda x: x[1], reverse=True)


def huffman(freq):
    if len(freq) <= 2:
        return dict(zip(freq.keys(), ['0', '1'][:len(freq)]))

    l, r = get_lower_pair(freq.copy())
    p1, p2 = freq.pop(l), freq.pop(r)
    freq[l + r] = p1 + p2

    c = huffman(freq)
    clr = c.pop(l + r)
    c[l], c[r] = clr + '0', clr + '1'

    return c


def get_lower_pair(freq):
    sorted_p = sorted(freq.items(), key=lambda x: x[1])
    return sorted_p[0][0], sorted_p[1][0]


ss = input('Введите строку: ')
print(huffman(dict(get_freq(ss))))
