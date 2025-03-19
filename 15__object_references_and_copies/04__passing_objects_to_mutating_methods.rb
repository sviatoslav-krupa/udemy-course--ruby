values = [1, 2, 3, 4]
def append_5(elements) # `elements` is an alias (one more pointer) to `values` in this case
  elements << 5
end
append_5(values)
values #=> [1, 2, 3, 4, 5]

name = "Boris"
def uppercase(text) # `text` is an alias (one more pointer) to `name` in this case
  text.upcase!
end
uppercase(name)
name #=> "BORIS"

new_name = "Sviat".freeze
uppercase(new_name) #=> can't modify frozen String: "Sviat" (FrozenError)
new_name            #=> "Sviat"

# Edge cases:
new_values = [1, 2, 3, 4]
def new_example(elements) # `elements` is an alias (one more pointer) to `values` in this case
  elements = [] # assigns new object to `elements` variable (pointer), `new_values` variable (pointer) not changed
end
new_example(new_values)
new_values #=> [1, 2, 3, 4]
