import random

# 3. Написать программу, которая обходит не взвешенный ориентированный граф без петель, в котором все вершины связаны, по алгоритму поиска в глубину (Depth-First Search).
# Примечания:
# a. граф должен храниться в виде списка смежности;
# b. генерация графа выполняется в отдельной функции, которая принимает на вход число вершин.
def get_graph(vertexes_count):
  graph = {}

  for vertex in range(vertexes_count):
    ls = random.sample(range(vertexes_count), random.randint(1, vertexes_count - 1))
    graph[vertex] = list(filter(lambda i: i != vertex, ls))

  return graph


def depth_first_search(graph, start, visited):
  if start not in visited:
        visited.append(start)
        for k in graph[start]:
            depth_first_search(graph, k, visited)
  return visited


n = int(input('Число вершин: '))
graph = get_graph(n)
print(graph)
vertexes = depth_first_search(graph, 0, [])
print(vertexes)