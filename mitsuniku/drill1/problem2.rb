# Mix-inについて
# メソッド探索は継承リストに依存している
# Mix-inも継承リストに追加されるだけ

class Super
  def hoge
    "Super: hogehoge"
  end

  def fuga
    "Super: fugafuga"
  end
end

module Mod
  def hoge
    "Mod: hogehoge"
  end
end

class Foo < Super
  include Mod
end

p Kernel.class # KernelはObjectにmix-inされているモジュール
p Super.ancestors
p Foo.ancestors # [Foo, Mod, Super, Object, Kernel, BasicObject]

foo = Foo.new
p foo.hoge
p foo.method(:hoge).owner # -> Mod
p foo.method(:fuga).owner # -> Super
