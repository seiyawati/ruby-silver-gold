hash = {:foo => 1, :bar => 2}

# オブジェクトの複製, object_idは異なる
_hash = hash.dup
p _hash.object_id
p hash.object_id

# hashはブロックに[:foo, 1], [:bar, 2]という形でわたり、真と評価された配列オブジェクトを返す。
p hash.find {|i| i.member?(:foo)} # [:foo, 1]

# 偽である配列を返す
p hash.reject {|key, value| key == :foo}  # {:bar=>2}

# keyが:fooである要素を削除し、要素の値が返される
p hash.delete(:foo)
# -> 1

p hash
