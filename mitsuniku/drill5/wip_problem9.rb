# 行区切りの帽子の型のリストが内容のファイルを作成する
File.open("hats.txt", "w") do |f|
  f.puts(%w[Bowler Deerstalker Dunce\ cap Fedora Fez])
end
 
File.open("hats.txt") do |f|
  4.times { f.gets() }
  puts f.gets
  p f.readline # EOFに反応してEOFErrorを発生する。
  # p f.gets -> nilを返す。
end
