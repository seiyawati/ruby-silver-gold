h = { "a" => 0, "b" => 100, "c" => 200, "d" => 300, "e" => 300 }
# キーと値の組みを削除する
h.delete("a")
# キーに関連付けられた値を返す
p h.fetch("b")
p h
h.clear
p h
