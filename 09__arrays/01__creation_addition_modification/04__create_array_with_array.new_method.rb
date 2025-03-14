# Syntax:
#   * `Array.new(length, default_value)`

Array.new               #=> []
Array.new(3)            #=> [nil, nil, nil]
Array.new(3, "qwe")     #=> ["qwe", "qwe", "qwe"]
Array.new(3, [1, 2, 3]) #=> [[1, 2, 3], [1, 2, 3], [1, 2, 3]]

# Edge cases:
Array(3.14)   #=> [nil, nil, nil]
Array(3.94)   #=> [nil, nil, nil]
Array("qwe")  #=> no implicit conversion of String into Integer (TypeError)
