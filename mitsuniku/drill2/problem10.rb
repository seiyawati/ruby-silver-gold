str = "foobarbaz\r\n\r\n"
p str.chomp('').chop.chop.reverse

# chompは引数に空文字を指定すると文末の改行コード全てを取り除く
