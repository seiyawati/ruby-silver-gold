File.open("data") do |io|
  while not io.eof?
    print(io.read(1))
    # ファイルポインタを先頭に
    io.seek(0, IO::SEEK_SET)
  end
end
