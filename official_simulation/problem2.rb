def foo(a, *b)
  p a
end

foo(1, 2, 3, 4)

# 1
# ＊のついた引数は可変長引数として制限がなく配列として認識する。

def bar(*numbers)
  numbers
end
p bar(1, 2, 3, 4, 5)
