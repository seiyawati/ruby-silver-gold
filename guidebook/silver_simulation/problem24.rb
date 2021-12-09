s = ["one", "two", "three"]
s.shift
s.shift
# unshiftは配列の先頭に要素を追加するが、引数指定なしだと何もしない。
s.unshift
s.push "four"
p s
