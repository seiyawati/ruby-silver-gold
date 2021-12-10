open("test.txt", "r+") do |f|
  data = f.read.chomp
  data.reverse!
  f.rewind
  f.write(data)
end

# w+は元ファイルの内容を空にする
# a+は追記モードになる
