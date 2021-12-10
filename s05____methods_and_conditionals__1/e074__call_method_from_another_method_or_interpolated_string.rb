# Call A Method from Another Method or Interpolated String
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6481618#overview) is the link to the video.

# The order of methods definition doesn't matter

def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def multiply(a, b)
  a * b
end

def calculator(a, b, operation = "add")
  if operation == "add"
    "The result of adding is #{add(a, b)}"
  elsif operation == "subtract"
    "The result of subtracting is #{subtract(a, b)}"
  elsif operation == "multiply"
    "The result of multiplying is #{multiply(a, b)}"
  else
    "That's not a real math operation, genius!"
  end
end

calculator(2, 3, "add") # => "The result of adding is 5"
calculator(2, 3) # => "The result of adding is 5" ("add" is a default parameter)
calculator(2, 3, "subtract") # => "The result of subtracting is -1"
calculator(2, 3, "multiply") # => "The result of multiplying is 6"
calculator(2, 3, "blah blah blah") # => "That's not a real math operation, genius!"
