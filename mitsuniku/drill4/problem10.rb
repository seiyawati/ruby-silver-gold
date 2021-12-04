module Foo
  def foo
    puts "foo"
  end
end
 
class Bar
  extend Foo
end
 
Bar.foo  #=> foo

# extendメソッドは、引数に指定したモジュールのインスタンスメソッドを特異メソッドとしてクラスに追加する。
# Fooで定義されている特異メソッドは追加されない。

# --------------------------------------------------------------------------------------------------------

# include
module M
  def method_m; "method_m"; end
end

class A
  include M
end

a = A.new

a.method_m
#=> "method_m"

A.method_m
#=> NoMethodError: undefined method `method_m' for A:Class

# --------------------------------------------------------------------------------------------------------

module M
  def method_m; "method_m"; end
end

class B 
  extend M
end

b = B.new

b.method_m
#=> NoMethodError: undefined method `method_m'...

B.method_m
#=> "method_m"
