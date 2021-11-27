numbers = [3,89,40,39,29,10,50,59,69]
num = numbers.inject do |i,j|
  i > j ? i : j
end
p num

# オブジェクト.inject {|result, item| block } 
# blobkでの戻り値がresultに代入される。

# 参考URL
# https://uxmilk.jp/25932
