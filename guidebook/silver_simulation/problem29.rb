a = ["a", "b", "c"]
b = [1, 2, 3]
a.zip(b).each{|x| p x}
# ブロックを渡すと各要素を順番に返す
a.zip(b){|x| p x}
# 行と列を入れ替える。一次元の場合はTypeError, 各要素のサイズが不揃いの場合はIndexError 
[a, b].transpose.each{|x, y| p [x, y]}
