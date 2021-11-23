File.open("foo.txt","r") do |io|
  puts io.gets
   puts io.read
    io.rewind
    p lines = io.readlines
end
# rewindはファイルポインターを先頭に移動する。
# ファイルを読み書きする位置のこと。メモ帳を開いているときのカーソルみたいなもの。
