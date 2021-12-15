# Hashクラスについて

## ハッシュの生成

hash1 = {"a" => 1, "b" => 2, "c" => 3}
p hash1

hash2 = Hash["apple", "fruit", "coffee", "drink"]
p hash2

# キーがない時の初期値を設定できる。
hash3 = Hash.new
p hash3["apple"] # -> nil
hash3 = Hash.new("None")
p hash3["apple"] # -> None

# newメソッドはブロックを取ることできる。
hash4 = Hash.new{|hash, key| hash[key] = nil}
p hash4["apple"]
hash4 = Hash.new{|hash, key| hash[key] = "None"}
p hash4["apple"]

hash5 = Hash.new("None")
p hash5.default # -> None
p hash5["apple"]
hash5.default = "Not exist"
p hash5.default # -> Not exist

# ----------------------------------------------------

## ハッシュのキーや値を取得

hash6 = {"apple" => "fruit", "coffee" => "drink"}
p hash6.keys
p hash6.values
p hash6.values_at("apple", "coffee")

p hash6.fetch("apple") # -> fruit
p hash6.fetch("app**", "orange") # -> orange
p hash6.fetch("app**"){|key| key.gsub(/app.+/, "apple")} # -> apple

p hash6.select{|key, value| key == "apple"} # -> {"apple"=>"fruit"}
p hash6.find_all{|key, value| key == "apple"} # -> [["apple", "fruit"]]

# ------------------------------------------------------------------------

## ハッシュを変更する

hash7 = {"apple" => "fruit", "coffee" => "drink"}
p hash7.delete("apple") # -> fruit
p hash7 # -> {"coffee"=>"drink"}
p hash7.delete("orange") # ->z nil
p hash7.delete("orange"){|key| key.upcase} # -> ORANGE

# rejectは結果が真になる値を取り除いたハッシュを生成する。
hash8 = {"apple" => "fruit", "coffee" => "drink"}
p hash8.reject{|key, value| value == "fruit"} # -> {"coffee"=>"drink"}

# 破壊的メソッド
p hash8.reject!{|key, value| value == "fruit"}
p hash8.delete_if{|key, value| value == "fruit"}
p hash8 

# replace前後で同じID
hash9 = {"apple" => "fruit", "coffee" => "drink"}
p hash9.object_id
p hash9.replace({"honda" => "car", "kawasaki" => "bike"})
p hash9.object_id

# shiftは先頭のキーと組みわせを配列にして返す
hash10 = {"apple" => "fruit", "coffee" => "drink"}
p hash10.shift # -> ["apple", "fruit"]
p hash10

hash11 = {"apple" => "fruit", "coffee" => "drink"}
p hash11.merge({"orange" => "fruit", "tea" => "drink", "apple" => "foods"}) # -> {"apple"=>"foods", "coffee"=>"drink", "orange"=>"fruit", "tea"=>"drink"}
p hash11.merge({"orange" => "fruit", "tea" => "drink", "apple" => "foods"}) {|key, self_value, other_value| self_value} # -> {"apple"=>"fruit", "coffee"=>"drink", "orange"=>"fruit", "tea"=>"drink"}

# 元のオブジェクトを変更する
hash11 = {"apple" => "fruit", "coffee" => "drink"}
p hash11.merge!({"orange" => "fruit", "tea" => "drink", "apple" => "foods"})
p hash11.update({"grape" => "fruit", "tea" => "drink", "apple" => "foods"})
p hash11

# キーと値を逆にする
hash12 = {"apple" => "fruit", "coffee" => "drink"}
p hash12.invert

# ------------------------------------------------------------------------------------------------------------------------------

## ハッシュを調べる

hash13 = {"apple" => "fruit", "coffee" => "drink"}
p hash13.length # -> 2
p hash13.size # -> 2

p hash13.empty? # -> false

# ハッシュにキーが存在する場合に真を返す
p hash13.has_key?("apple")
p hash13.include?("apple")
p hash13.key?("apple")
p hash13.member?("apple")

# ハッシュに値が存在する場合に真を返す
p hash13.has_value?("fruit")
p hash13.has_value?("fruit")

# --------------------------------------------------------

# ハッシュを使った繰り返し

hash14 =  {"apple" => "fruit", "coffee" => "drink"}
hash14.each{|key, value| puts "#{key} => #{value}"} 
hash14.each_pair{|key, value| puts "#{key} => #{value}"} 

hash14.each_key{|key| puts "#{key}"} 
hash14.each_value{|value| puts "#{value}"} 

# --------------------------------------------------------

# ハッシュをソートする

# ハッシュをキーと値の組みわせの配列に変換する。
hash15 = {4 => "a", 3 => "b", 2 => "c", 1 => "d"}
p hash15.sort # -> [[1, "d"], [2, "c"], [3, "b"], [4, "a"]]
p hash15.sort{|a, b| a[1] <=> a[1]} # -> [[4, "a"], [3, "b"], [2, "c"], [1, "d"]]

# --------------------------------------------------------

# ハッシュを変換する

p hash15.to_a # -> [[4, "a"], [3, "b"], [2, "c"], [1, "d"]]
