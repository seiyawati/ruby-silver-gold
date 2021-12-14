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

hash7 = {"apple" => "fruit", "coffee" => "drink"}
p hash7.delete("apple") # -> fruit
p hash7 # -> {"coffee"=>"drink"}
p hash7.delete("orange") # ->z nil
p hash7.delete("orange"){|key| key.upcase} # -> ORANGE

hash8 = 
