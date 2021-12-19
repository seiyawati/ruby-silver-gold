def bar(n)
  puts n
end

bar 5

def bar(n)
  puts n
end

bar (10)

def bar(*n1, n2)
  p n1
  puts n2
end

bar 5, 6, 7, 8

def bar(n1, *n2, n3)
  p n1 # -> 5
  p n2 # -> [6, 7]
  p n3 # -> 8
end

bar(5, 6, 7, 8)

# 可変長引数を二つ定義することはできない
# def bar(*n1, n2, *n3)
#   puts n1
#   puts n2
# end
