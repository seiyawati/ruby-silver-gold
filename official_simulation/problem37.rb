File.open("foo.txt", "a+") do |io|
  io.write(Time.now.strftime("%Y/%m/%d"))
end

# "r" 読み込みモード
# "w" 書き込みモード。ファイルが存在していればファイルを空にする。
# "a" 書き込みモード。ファイルが存在していれば、ファイルの末尾から追記する。
# "r+" 読み書き両用モード。ファイルの先頭から読み書きを行う。
# "w+" 読み書き両用モード。ファイルが存在していればファイルを空にする。
# "a+" 読み書き両用モード。ファイルの末尾から読み書きを行う。