ary = []
10.times do |i|
  i.even? ? (i % 3 == 0) ? ary << i : next : next 
end
p ary
