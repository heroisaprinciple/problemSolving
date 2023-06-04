"""
Write a function that takes an array of numbers (integers for the tests) and a target number.
It should find two different items in the array that, when added together, give the target value.
The indices of these items should then be returned in a tuple / list (depending on your language)
like so: (index1, index2).

For the purposes of this kata, some tests may have multiple answers; any valid solutions will be accepted.

The input will always be valid (numbers will be an array of length 2 or greater, and all
of the items will be numbers; target will always be the sum of two different items from that array).

------------
1. If we do:
 for i in range(1, len(numbers)):
        if numbers[i] + numbers[i - 1] == target:,
this would be incorrect as two_sum([1,2,3], 4) will return []. This happens because (obviously) loop
starts from ind 1.
1: 2 + 1 != 3
2: 3 + 2 != 4
In other text cases it worked.

2. if numbers[i] + numbers[i + 1] == target: would lead to list index out of range error.
3. Nested for loops enter the game.
"""

def two_sum(numbers, target):
    arr = []
    for i in range(len(numbers)):
        for j in range(i + 1, len(numbers)):
            if numbers[i] + numbers[j] == target:
                arr.append(i)
                arr.append(j)
                break
    return arr[:2]

print(sorted(two_sum([1,2,3], 4))) # [0,2]
print(sorted(two_sum([1234,5678,9012], 14690))) # [1,2]
print(sorted(two_sum([2,2,3], 4))) # [0,1]
