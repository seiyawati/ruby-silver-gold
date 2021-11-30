p [{:foo => 1}, ["bar", 2]].map{|i| i.to_s }.sort

# -> [“bar2”, “foo1”]にはならない気がする
