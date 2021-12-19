# ダブルクォートの時と同じ
s = <<SQL
  select *
    from my_table;
SQL

puts s

s = <<"SQL"
  select *
    from my_table;
SQL

puts s

hoge = "hoge"

# 式展開できない
s = <<'SQL'
  #{hoge}
SQL

puts s # -> #{hoge}

# 終端の行頭指定を回避する方法
s = <<-SQL
  select *
    from my_table;
    SQL

puts s

# コマンド出力
s = <<`SQL`
  touch sample.rb
SQL

puts s