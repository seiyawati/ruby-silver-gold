class Surface
  attr_reader :s
  def initialize(x,y)
    @s = x * y
  end
end

class Volume < Surface
  attr_reader :v
  def initialize(x,y,z)
    super(x,y)
    @v = x * y * z
  end
end

a = Volume.new(2,5,5)
puts "#{a.v},#{a.s}"

# -------------------------------------------------------------------

class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class DVD < Product
  attr_reader :running_time
  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end
end

dvd = DVD.new("A great movie", 1000, 100)
p dvd.name
p dvd.price
p dvd.running_time
