["tmp", "tmp/lang",  "tmp/lang/ruby", "tmp/lang/python"].each do |dir|
  Dir.mkdir(dir)
end
# 指定したディレクトリをカレントディレクトリに指定する。
Dir.chdir("tmp/lang")
Dir.new(".").each do |entry|
  # entryは. .. ruby pythonの4つ
  filename = File.join(entry, "rocking.rb")
  File.open(filename, "w")
end
# 空でないディレクトリを削除できない
# "Directory not empty – python (Errno::ENOTEMPTY)"
Dir.rmdir("python")
