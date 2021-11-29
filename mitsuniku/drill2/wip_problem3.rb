# ^で[]に列挙した文字以外にマッチする
p /[^P|p]rogramming/ =~ "Arogramming" # -> 0
p /[P|p]rogramming/ =~ "Arogramming" # -> nil
