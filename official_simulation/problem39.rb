puts "0123456789".delete("0-58-")

# 0-5は0から5までの数字を取り除くが、8-は範囲指定とみなされない。

array = [1, 2, 3, 2, 1]
p array.delete(2)       #=> 2
p array                 #=> [1, 3, 1]

# ブロックなしの引数に nil を渡すとその戻り値から削除が
# 行われたかどうかの判定をすることはできない
ary = [nil,nil,nil]
p ary.delete(nil)       #=> nil
p ary                   #=> []
p ary.delete(nil)       #=> nil
