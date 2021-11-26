File.open("foo.txt","r") do |io|
  # File.openにブロックを渡すと自動的に閉じる
  io.each_line do |line|
    puts io.lineno
    puts line
  end

  p io.getbyte

  io.rewind
  p io.readlines
end
# rewindはファイルポインターを先頭に移動する。
# ファイルを読み書きする位置のこと。メモ帳を開いているときのカーソルみたいなもの。

if $stdin.tty?
  puts "tty true"
else
  puts "tty false"
end
# tty?はioオブジェクトがコンソールに関連付けられているかどうかを判別する。
