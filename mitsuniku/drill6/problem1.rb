# 条件式にリテラルを指定すると警告が出る
# raiseに引数がないとRuntimeError
if "foo"
  raise
end

# 条件演算子、条件式 ? 真の時の値 : 偽の時の値
baz = "foo"
baz ? def baz.foo; puts self; end : def baz.bar; puts self; end
baz.bar
