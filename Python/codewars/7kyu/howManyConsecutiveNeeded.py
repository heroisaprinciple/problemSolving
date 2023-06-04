"""
Create the function consecutive(arr) that takes an array of integers and return the minimum number
 of integers needed to make the contents of arr consecutive from the lowest number to the highest number.

For example:
If arr contains [4, 8, 6] then the output should be 2 because two numbers need to be added to the array (5 and 7)
to make it a consecutive array of numbers from 4 to 8. Numbers in arr will be unique.
"""

def consecutive(arr):
    if len(arr) == 0: return 0

    new_arr = list(range(min(arr), max(arr)))
    return len([x for x in new_arr if x not in arr])


print(consecutive([4,8,6])) # 2
print(consecutive([1,2,3,4])) # 0
print(consecutive([])) # 0
print(consecutive([1])) # 0
print(consecutive([-10])) # 0
print(consecutive([1,-1])) # 1
print(consecutive([-10,-9])) # 0
print(consecutive([0])) # 0
print(consecutive([10,-10])) # 19
print(consecutive([-10,10])) # 19
