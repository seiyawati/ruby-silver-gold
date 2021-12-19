a = "Ruby"
b = " on Rails"
a.concat b
a.reverse!
p a.index("R", 1)

# pos番目からpatternを検索し、最初に見つかった位置を返す。
# String#index(pattern, pos)
