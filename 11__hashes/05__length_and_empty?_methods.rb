# Notes:
#   * .length - number of key-value pairs
#   * .empty? - if length is 0

shopping_list = {
  bananas: 5,
  oranges: 10,
  carrots: 3,
  crackers: 15
}
vegan_shopping_list = {}

shopping_list.length        #=> 4
vegan_shopping_list.length  #=> 0

shopping_list.empty?        #=> false
vegan_shopping_list.empty?  #=> true

# Edge cases:
{ a: "qwe", b: "qwe", a: "another qwe"}.length #=> 2 (warning: key :a is duplicated and overwritten on line 9)
