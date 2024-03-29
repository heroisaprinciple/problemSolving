=begin

Given an array of integers, find the one that appears an odd number of times.

There will always be only one integer that appears an odd number of times.

Examples
[7] should return 7, because it occurs 1 time (which is odd).
[0] should return 0, because it occurs 1 time (which is odd).
[1,1,2] should return 2, because it occurs 1 time (which is odd).
[0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
[1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

=end

def find_it(seq)
  seq.select{|num| seq.count(num) % 2 == 1}[0]
end

puts find_it([7]) #7
puts find_it([0]) #0
puts find_it([1, 1, 2]) #2
puts find_it([0, 1, 0, 1, 0]) #0
puts find_it([1,2,2,3,3,3,4,3,3,3,2,2,1]) # 4
puts find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) # 5
puts find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) # -1
puts find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) #5
puts find_it([10]) # 10
puts find_it([1,1,1,1,1,1,10,1,1,1,1]) #10
