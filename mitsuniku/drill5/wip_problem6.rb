p File.stat("sample.rb").atime # access time 最終アクセス時効

p File.ctime("sample.rb") # change time 最終ステータス更新時刻

p File.open("sample.rb").mtime # modify time 最終変更時刻
