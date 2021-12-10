a = {"Foo" => "Hoge", "Bar" => "Piyo", "Baz" => "Fuga"}
b = {"Foo" => "hoge", "Bar" => "piyo", "Baz" => "fuga"}

# [キー, 値]の値の昇順でソートするという意味。
# a.update(b).sort -> [["Bar", "piyo"], ["Baz", "fuga"], ["Foo", "hoge"]]
p a.update(b).sort{|a, b| a[1] <=> b[1]}
