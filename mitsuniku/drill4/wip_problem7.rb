Foo = "main"
 
class Bar
  Foo = "foo"
 
  def self.foo
    ::Foo
  end
end
 
p Bar.foo # -> "main"
# 違うIDを指す。
p ::Foo.object_id
p Bar::Foo.object_id

# ::演算子から始まる定数はトップレベルで定義されている定数を参照する
