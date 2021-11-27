File.open('foo.txt', 'r') do |io|
  io.each_line do |line|
    p line
  end
end

# EOFに到達したときの振る舞いの違い
# IO.gets -> nil
# IO.readline -> EOFError
