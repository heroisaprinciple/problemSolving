def display_current_inventory(inventory_list)
  # use #each to iterate through each item of the inventory_list (a hash)
  # use puts to output each list item "<key>, quantity: <value>" to console
  inventory_list.each{|key, val| puts "There are #{val} #{key} in the inventory list."}
end

display_current_inventory({Pens: 2, Pencils: 5, Pages: 20, Glasses: 1, Books: 3})

p '-----------'

def display_guess_order(guesses)
  # use #each_with_index to iterate through each item of the guesses (an array)
  # use puts to output each list item "Guess #<number> is <item>" to console
  # hint: the number should start with 1
  guesses.each_with_index { |el, _idx| puts "Guess #{el} is item #{_idx}" }
end

display_guess_order([5, 2, 4, 11, 16, 1])

p '---------------'

def find_absolute_values(numbers)
  # use #map to iterate through each item of the numbers (an array)
  # return an array of absolute values of each number
  abs = numbers.map{|num| num.abs }
  p abs
end

find_absolute_values([10, 2, 3, -5, 0, -15])

p '---------------'

def find_low_inventory(inventory_list)
  # use #select to iterate through each item of the inventory_list (a hash)
  # return a hash of items with values less than 4
  low_val = inventory_list.select{|key, val| val < 4}
  p low_val
end

find_low_inventory({Pens: 2, Pencils: 5, Pages: 20, Glasses: 1, Books: 3})

p '---------------'
