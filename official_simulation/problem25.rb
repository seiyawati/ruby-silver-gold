p "Hello there".class
p String.superclass # -> Object Obejct.superclass -> BasicObject

class Foo; end
class Bar < Foo; end
p Foo.superclass
p Bar.superclass
