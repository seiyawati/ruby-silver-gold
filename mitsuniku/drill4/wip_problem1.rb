module Foo
  Bar = "bar"
end
 
class Baz
  include Foo
end
 
# 定数参照には::演算子を使う
puts Baz::Bar  #=> bar
