=begin
Take an array and remove every second element from the array.
Always keep the first element and start removing with the next element.
=end

#TODO: using .select and .with_index
def remove_every_other(arr)
=begin

  arr.select.with_index do |_el, idx|
      # _var is unused variable, .with_index requires two params: the second is idx
    idx.even?
  end

=end

  #TODO: using .map and .reject
  arr.map.reject.with_index { |_el, idx| idx.odd? }
end

puts remove_every_other(["Keep", "Remove", "Keep", "Remove", "Keep"]) # ["Keep", "Keep", "Keep", ...]
print '_____'
puts remove_every_other([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) # [1, 3, 5, 7, 9])