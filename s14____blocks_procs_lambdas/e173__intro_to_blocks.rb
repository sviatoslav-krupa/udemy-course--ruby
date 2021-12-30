# Introduction to Blocks
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482518#overview) is the link to the video.

# What is a block:
# * A block is a collection of code to be executed.
# * Block is not an object.
# * Blocks must be attached to a method call.
# * Blocks alter the execution of the method.
# * A block is not an argument/parameter to the method.
# * Blocks can be defined with `{...}` or `do...end`.
# * A block can get or update the value of local variables within the block.

# Method vs Block:
# * Methods can be invoked over and over.
# * A block will only be called once, then disappear.
# * A block isolates actions away from the method.

# Example: .each
[3, 5, 7, 9].each { |num| p num ** 2 }
# .each - iterate through items is a core functionality
# block specifies what we want to do each each item

# Edge case
{ |num| p num }.class #=> syntax error, unexpected local variable or method, expecting `do' or '{' or '('
