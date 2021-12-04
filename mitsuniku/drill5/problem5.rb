file = File.open("hello.rb", "w")
# ファイル情報が格納されている。
# あくまでスナップショット
stat = file.stat
# 最終更新時刻
p mtime1 = stat.mtime
file.puts("new data")
# closeされていない状態ではバッファと呼ばれるメモリの蓄積される
# flushをするとそのたびに書き込みを指示できる
file.flush
# ファイルに書き込みがあってもスナップショットは自動的に更新されない。
p mtime2 = stat.mtime
