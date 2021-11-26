regex = /^[hc].*o$/i
if 'Hello' =~ regex
  puts 'True'
else
  puts 'False'
end
# iオプションにより大文字小文字の区別を無視している。
