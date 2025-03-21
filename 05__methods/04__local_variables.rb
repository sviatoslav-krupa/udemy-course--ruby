# Notes:
#   * Local variable - exists in a specific environment
#   * Method is a totally separate execution environment, scope

expression = "I'm handsome"

def introduce_myself
  expression = "I'm a genius"
  another_expression = "I'm Sviat"

  puts expression
  puts another_expression
end
introduce_myself
# OUTPUT:
#   I'm a genius
#   I'm Sviat

puts expression #=> nil
# OUTPUT:
#   I'm handsome

# :another_expression is a local variable in :introduce_myself method
another_expression #=> undefined local variable or method `another_expression' for main:Object (NameError)

action_star = "Jean Claude Van Damme"
def film_movie
  action_star # not available in scope of :film_movie method
end
film_movie #=> undefined local variable or method 'action_star' for main (NameError)
