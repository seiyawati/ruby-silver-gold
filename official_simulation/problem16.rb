mozart = ["Symphony","Piano Concerto", "Violin Concerto","Horn Concerto","Violin Sonata"]
listend = ["Symphony","Violin Concerto","Horn Concerto"]
p mozart - listend

ary1 = [1,2,3,4,5]
ary2 = [3,4,5,6,7]
p ary1 | ary2 #=>[1,2,3,4,5,6,7]
p ary1 & ary2 #=> [3,4,5]
p ary1 - ary2 #=>[1,2]

# Arryマニュアル：https://docs.ruby-lang.org/ja/latest/class/Array.html
