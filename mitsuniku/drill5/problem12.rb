File.open("authors.txt") do |file|
  2.times { file.gets }
  # linenoはgetsが呼ばれた回数
  file.lineno = 0
  puts file.gets
end
