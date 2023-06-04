# Consider an array/list of sheep where some sheep may be missing from their place.
# We need a function that counts the number of sheep present in the array (true means present).

def count_sheep(arr)
  #TODO: my initial solution
=begin

  count = 0
  arr.each do |el|
    if el == true && defined? el
      count += 1
    end
  end
  count

=end

  #TODO: using .count
  # arr.count { |el| el == true}

  #TODO: using .compact (returns an arrays of non-nil els)
  arr.map { |el| el ? el : nil }.compact.length
end

arr = [true,  true,  true,  false,
       true,  true,  true,  true ,
       true,  false, true,  false,
       true,  false, false, true ,
       true,  true,  true,  true ,
       false, false, nil,  true] # 16

puts count_sheep(arr)
puts arr.length # 24
