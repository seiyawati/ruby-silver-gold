ary = []
ary << 1 && false
true || ary << 2
false && ary << 3
false || ary << 4
p ary

# &&は左辺がtrueと評価された時のみ右辺が実行
# ||は左辺がfalseと評価された時のみ右辺を実行
