class Foo
  @@num = 0
  def self.count
    @@num += 1
  end
end

class Bar < Foo
end

puts Foo.count
puts Bar.count

# クラス変数：インスタンス毎に値が共通
# インスタンス変数：インスタンス毎に値が固定
