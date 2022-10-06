'''

You are given an array (which will have a length of at least 3, but could be very large) containing integers.
The array is either entirely comprised of odd integers or entirely comprised of even integers except for a
single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

Examples
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)

'''

def find_outlier(integers)
  # odd = [] # % 2 != 0
  # even = []
  #
  # integers.each do |el|
  #   el.odd? ? odd << el : even << el
  # end
  #
  # even.length == 1 ? even[0] : odd[0]

  integers.count(&:odd?) > 1 ? integers.find(&:even?) : integers.find(&:odd?)

end

p find_outlier([0, 1, 2]) # 1
p find_outlier([1, 2, 3, 4]) # 2