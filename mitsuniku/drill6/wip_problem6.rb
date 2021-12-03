(1..31).each_slice(7) do |i|
  # 第一引数は出力format
  i.each {|n| printf("%2d%s", n, "\s") }
  print("\n")
end
