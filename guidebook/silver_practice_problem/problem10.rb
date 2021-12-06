# includeはModuleのメソッド
include Math

def area(r)
  return r * r * Math::PI
end

p area(3)
