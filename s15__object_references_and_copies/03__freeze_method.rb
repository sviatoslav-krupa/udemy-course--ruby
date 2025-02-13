# .freeze - makes objects immutable (impossible to modify).
# You can't unfreeze it later.

name = "Boris".freeze
name << " the Genius" # => can't modify frozen String: "Boris" (FrozenError)
name.upcase! # => can't modify frozen String: "Boris" (FrozenError)

name = "Sviat" # => no exceptions (we can't modify the object itself, but we can assign the new object)
name << " is awesome" # => "Sviat is awesome" (no exceptions, totally new object)

hobbies = ["Coding", "Sushi"].freeze
hobbies << "Winning" # => can't modify frozen Array: ["Coding", "Sushi"] (FrozenError)

# .dup - the copy isn't frozen when called on a frozen object
name_dup = name.dup
name_dup << " the Genius" # => no exception
name_dup # => "Boris the Genius"

# .clone - the copy is frozen when called on a frozen object
name_clone = name.clone
name_clone << " the Genius" # => can't modify frozen String: "Boris" (FrozenError)
