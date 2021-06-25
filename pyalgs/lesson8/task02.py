# 2. Доработать алгоритм Дейкстры (рассматривался на уроке), чтобы он дополнительно возвращал список вершин, которые необходимо обойти.
g = [
  [0, 0, 1, 1, 9, 0, 0, 0],
  [0, 0, 9, 4, 0, 0, 5, 0],
  [0, 9, 0, 0, 3, 0, 6, 0],
  [0, 0, 0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0, 1, 0],
  [0, 0, 0, 0, 0, 0, 5, 0],
  [0, 0, 7, 0, 8, 1, 0, 0],
  [0, 0, 0, 0, 0, 1, 2, 0],
]


def dijkstra(graph, start):
  length = len(graph)
  is_visited = [False] * length
  cost = [float('inf')] * length
  parent = [-1] * length
  # Список списков вершин, которые надо пройти, где ключ - целевая вершина
  paths = [[] for _ in range(length)]

  cost[start] = 0
  min_cost = 0

  while min_cost < float('inf'):
    is_visited[start] = True

    for i, vertex in enumerate(graph[start]):
      if vertex != 0 and not is_visited[i]:
        paths[i] = paths[start] + [start]
        if cost[i] > vertex + cost[start]:
          cost[i] = vertex + cost[start]
          parent[i] = start

    min_cost = float('inf')

    for i in range(length):
      if min_cost > cost[i] and not is_visited[i]:
        min_cost = cost[i]
        start = i

  return cost, paths

s = int(input('От какой вершины начинать движение [0..7]? '))
cost, paths = dijkstra(g, s)
print(cost, 'Список стоиомстей путей')
print(paths, 'Список путей')