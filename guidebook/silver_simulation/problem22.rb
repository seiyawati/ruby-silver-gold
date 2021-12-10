# delete_ifは常にselfを返す
a = [0, 1, 2, 3, 4, 5]
a.delete_if{|x| x % 2 == 0}
p a #- > [1, 3, 5]

# reject!は要素が一つ以上削除されたらself, そうでなければnilを返す
# rejectはブロックで偽となった要素の配列を返す。
a = [0, 1, 2, 3, 4, 5]
p a.reject!{|x| x % 2 == 0} # -> nil
p a # -> [0, 1, 2, 3, 4, 5]
