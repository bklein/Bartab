require "./bartab"
require "./drink"

tab = BarTab.new

drinks = [
  Drink.new(:vodka),
  Drink.new(:rum),
  Drink.new(:rum)
]

drinks.each do |drink|
  tab.add_drink(drink)
end

puts ""
puts "List of drinks consumed"
puts "======================="

puts tab.a_list_of_all_the_drinks_I_had

puts ""
puts "Total: $#{tab.balance}"
