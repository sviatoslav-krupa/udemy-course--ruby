# Pass a Ruby Method as Proc
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482534#overview) is the link to the video.

# & - to pass a block to a method
# : - Symbol, String-like representation of method name
# block will call a method for each item (`item.method`)

%w[1 2 3].map { |string| string.to_i } #=> [1, 2, 3]
%w[1 2 3].map(&:to_i) #=> [1, 2, 3]
[10, 14, 25].map(&:to_s) #=> ["10", "14", "25"]

[1, 2, 3, 4, 5].select(&:even?) #=> [2, 4]
[1, 2, 3, 4, 5].select(&:odd?) #=> [1, 3, 5]
