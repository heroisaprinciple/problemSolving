"""
The main idea is to count all the occurring characters in a string. If you have a string like aba, then
the result should be {'a': 2, 'b': 1}.

What if the string is empty? Then the result should be empty object literal, {}.
"""

def count(s):
    obj = {}
    for x in s:
        c = s.count(x)
        # add a key-value pair using update() method
        obj.update({x: c})
    return obj

print(count('aba')) # {'a': 2, 'b': 1}
print(count('')) # {}
print(count('aa')) # {'a' : 2}
print(count('aabb')) # {'b' : 2, 'a' : 2}
