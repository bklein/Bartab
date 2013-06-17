require "./bartab"
require "./drink"

tab = BarTab.new

puts "Welcome to Bartab"

def print_receipt(bartab)

  puts "List of drinks consumed so far"
  puts "=============================="

  bartab.a_list_of_all_the_drinks_I_had.each do |drink|
    puts drink
    puts "-" * drink.length
  end

  puts "======"
  puts "Total: #{bartab.balance}"
end

while true do
  puts "Enter drink name"
  drink_name = gets.chomp.downcase

  break if drink_name == "q"
  drink = Drink.new(drink_name.to_s)
  tab.add_drink(drink)

  print_receipt(tab)
end
