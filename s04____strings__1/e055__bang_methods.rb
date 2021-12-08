# Bang Methods on Strings
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481520#overview) is the link to the video.

# bang methods (may include '!' in the end) - has a side effect (modifies, mutates an original object)

word = "hello"
p word.capitalize # => "Hello"
p word # => "hello"

# The same as `word = word.capitalize`
word.capitalize!
p word # => "Hello"

word.upcase!
p word # => "HELLO"

word.downcase!
p word # => "hello"

word.reverse!
p word # => "olleh"

word.swapcase!
p word # => "OLLEH"
