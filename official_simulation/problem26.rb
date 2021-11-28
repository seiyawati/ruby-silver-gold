s = "To be or not to be, that is the question."
hash = Hash.new(0)

p s.scan(/\w+/) # -> ["To", "be", "or", "not", "to", "be", "that", "is", "the", "question"]
s.scan(/\w+/) {|i| hash[i] += 1}
# s.scan(/\w+/) do |i| 上記と同じ意味
#   hash[i] += 1
# end

p hash["be"] #=>2

# sub：str.sub(pattern, replacement)
