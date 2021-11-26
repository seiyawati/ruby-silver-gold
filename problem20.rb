p File.join("ruby", "exam", "silver")

File.join("a","b")                        # => "a/b"
File.join("a/","b")                       # => "a/b"
File.join("a/","/b")                      # => "a/b"
File.join("a","/b")                       # => "a/b"
File.join("a", ["b", ["c", ["d"]]])       # => "a/b/c/d"
File.join("", "a", ["b", ["c", ["d"]]])   # => "/a/b/c/d"
File.join([])                             # => ""
File.join                                 # => ""
