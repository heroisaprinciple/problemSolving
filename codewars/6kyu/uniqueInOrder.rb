"""
Implement the function unique_in_order which takes as argument a sequence and returns a list
of items without any elements with the same value next to each other and preserving the original order of elements.

For example:

unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
unique_in_order([1,2,2,3,3])       == [1,2,3]
"""

def unique_in_order(iterable)
=begin
  iterable_arr = iterable.split('') if iterable.is_a?(String)
  answer = []
  iterable_arr.each do |el|
    answer << el if answer.last != el
  end
  answer
=end
  (iterable.is_a?(String) ? iterable.split('') : iterable).chunk{|x| x}.map(&:first)
end

p unique_in_order('AAAABBBCCDAABBB') # ['A', 'B', 'C', 'D', 'A', 'B']
p unique_in_order('ABBCcAD') # ['A', 'B', 'C', 'c', 'A', 'D']
p unique_in_order([1,2,2,3,3]) # [1,2,3]