foo = [1,2,3]
bar = foo
baz = foo.dup

p foo.object_id
p bar.object_id
p baz.object_id

bar[3] = 4
p foo
p bar
p baz
