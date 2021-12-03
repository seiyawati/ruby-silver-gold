foo = ('a'..'z').each_with_index {|i, n| break(i) if n.odd? }
# succは次のアルファベットを生成する。
p foo.succ