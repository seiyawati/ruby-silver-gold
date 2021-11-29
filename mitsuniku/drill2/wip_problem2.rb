s = "seiya kawamoto"

p s.split(//, 3) # ["s", "e", "iya kawamoto"]

p s.gsub(/.{3}/) {|s| s.upcase}  # SEIYA KAWAMOto"

p s.scan(/.{3}/) # ["sei", "ya ", "kaw", "amo"]

p s.match(/.{3}/) # <MatchData "sei">
