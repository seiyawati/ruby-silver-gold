# 条件を満たす要素がaに入る
a, = (1..5).partition(&:odd?)
p a

a1, a2 = [[1, 2], [3, 4]]
p a1 # [1, 2]
p a2 # [3, 4]
