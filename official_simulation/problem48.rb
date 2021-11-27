numbers = (1..20).to_a
p numbers.detect{|x| x % 5 == 0}

# detectは要素に対してブロックを評価した値が真になった最初の要素を返す。

# detectはfindの別名
numbers = (1..20).to_a
p numbers.find{|x| x % 5 == 0}
