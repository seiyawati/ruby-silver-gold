unless false || nil
  print "Hello\n"
end

# Rubyはfalseとnil以外は全て真として扱われる。
# unless false || nil -> if !false && !nil
