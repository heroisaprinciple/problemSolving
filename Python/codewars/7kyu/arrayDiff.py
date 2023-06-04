'''

Your goal in this kata is to implement a difference function, which subtracts one list
from another and returns the result.

It should remove all values from list a, which are present in list b keeping their order.

array_diff([1,2],[1]) == [2]

If a value is present in b, all of its occurrences must be removed from the other:

array_diff([1,2],[1]) == [2]

'''

def array_diff(a, b):
  return [x for x in a if x not in b]

print(array_diff([1,2], [1])) # [2]
print(array_diff([1,2,2], [1])) # [2,2]
print(array_diff([1,2,2], [2])) # [1]
print(array_diff([1,2,2], [])) # [1, 2, 2]
print(array_diff([], [1,2])) # []
print(array_diff([1,2,3], [1,2])) # [3]
print(array_diff([5,2,1], [2])) # [5, 1]
