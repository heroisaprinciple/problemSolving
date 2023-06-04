=begin

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
Additionally, if the number is negative, return 0 (for languages that do have them).

Note: If the number is a multiple of both 3 and 5, only count it once.

Courtesy of projecteuler.net (Problem 1)

=end

def solution(number)
  # Ruby creates these sequences using the ''..'' and ''...'' range operators.
  # The two-dot form creates an inclusive range, while the three-dot form creates a range that excludes
  # the specified high value.
  #
  # (1..5)        #==> 1, 2, 3, 4, 5
  # (1...5)       #==> 1, 2, 3, 4
  # ('a'..'d')    #==> 'a', 'b', 'c', 'd'
  (1...number).select{|num| num % 3 == 0 || num % 5 == 0}.uniq.sum
end

p solution(10) # 23
p solution(20) #78
puts solution(200) #9168
puts solution(-3)
