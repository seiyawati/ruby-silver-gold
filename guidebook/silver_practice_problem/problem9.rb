class Hoge
  attr_reader :message
  def initialize
    @message = "Hello"
  end
end

class Piyo < Hoge
  def initialize
    @message = "Hi"
    # スーパークラスのinitializeを呼び出す。
    super
  end
end

puts Piyo.new.message
