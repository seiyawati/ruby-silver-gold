s = "foo"
begin
  s[4] = ?b
rescue IndexError
  puts "error"
end
