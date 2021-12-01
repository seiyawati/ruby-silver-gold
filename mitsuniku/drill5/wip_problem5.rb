file = File.open("hello.rb", "w")
# ファイル情報が格納されている。
# あくまでスナップショット
stat = file.stat
# 最終更新時刻
p mtime1 = stat.mtime
file.puts("new data")
# 即座にメタデータは更新されない
file.flush
p mtime2 = stat.mtime
