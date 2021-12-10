h = {1 => "aa", 2 => "bb"}
# rejectは偽であった要素を集めた新しい配列を返す。
p h.reject{|x, y| x < 2}
# -> {2=>"bb"}

# rejectの判定がselect
p h.select{|x, y| x < 2}
# -> {1=>"aa"}
