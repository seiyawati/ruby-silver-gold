x = 0
def hoge
  (1...5).each do |i|
    # メソッド外のxを参照できない。
    x += 1
  end
  puts x
end
hoge
