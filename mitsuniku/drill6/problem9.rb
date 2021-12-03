def fib(count=9)
  count -= 2
  container = [0, 1]
  # 偽の間繰り返す
  until 0 >= count
    container += [(container[-2] + container[-1])]
    count -= 1
  end
  return container
end
p fib
