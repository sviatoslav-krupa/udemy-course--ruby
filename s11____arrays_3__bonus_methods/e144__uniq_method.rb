# The .uniq Method on an Array
# Here (https://www.udemy.com/course/learn-to-code-with-ruby-lang/learn/lecture/6482412#overview) is the link to the video.

# .uniq - returns array without duplicates

numbers = [1, 2, 3, 4, 2, 3, 5, 5, 6, 7]

numbers.uniq #=> [1, 2, 3, 4, 5, 6, 7]
p numbers #=> [1, 2, 3, 4, 2, 3, 5, 5, 6, 7]

numbers.uniq!
p numbers #=> [1, 2, 3, 4, 5, 6, 7]

def custom_uniq(numbers)
  new_arr = []

  numbers.each do |number|
    next if new_arr.include?(number)
    new_arr << number
  end

  new_arr
end

custom_uniq([1, 2, 3, 4, 2, 3, 5, 5, 6, 7]) #=> [1, 2, 3, 4, 5, 6, 7]
