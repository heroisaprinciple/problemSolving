p 'Nested array'
# creating a nested array
mutable = Array.new(3, Array.new(2))
mutable[0][0] = 1000
p mutable # [[1000, nil], [1000, nil], [1000, nil]]

immutable = Array.new(3) { Array.new(2) }
immutable[0][0] = 1000
p immutable # [[1000, nil], [nil, nil], [nil, nil]]

p '---------------'

people = [%w[Adams Baker Clark Davis], %w[Jones Lewis Lopez Moore], %w[Perez Scott Smith Young]]
people.each_with_index do |arr, _idx|
  puts "#{_idx} of #{arr}"
end

p '-----------'

people.each.with_index do |arr, arr_idx|
  arr.each.with_index do |el, el_idx|
    puts "Array #{arr} at the index #{arr_idx} has element #{el} with index #{el_idx}"
  end
end

p '------------'

test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
puts test_scores.all? do |scores|
  scores.any? {|score| score > 90}
end

puts ' '

p 'Nested Hashes'

cars = {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"},
 :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"},
 :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"},
 :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}

cars.delete(:blake)
cars[:caleb].delete(:model)

p cars