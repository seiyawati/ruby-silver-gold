# パターンに最初にマッチした文字列を返す。
p "hogepiyohogehoge".slice(/o../)
# -> oge

str = "milkman !!"
puts str.slice(2)  # -> l
puts str.slice(1..4) # -> ilkm
puts str.slice(/\w+/) # -> milkman
