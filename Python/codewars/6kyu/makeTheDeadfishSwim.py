"""
Write a simple parser that will parse and run Deadfish.

Deadfish has 4 commands, each 1 character long:

i increments the value (initially 0)
d decrements the value
s squares the value
o outputs the value into the return array
Invalid characters should be ignored.

parse("iiisdoso")  ==>  [8, 64]
"""

import re
def parse(data):
    data = re.sub("[^oids]+", "", data)
    arr = list(data)
    val = 0
    new_arr = []
    for x in arr:
        if x == 'i': val += 1
        elif x == 'd': val -= 1
        elif x == 's': val = val ** 2
        else: new_arr.append(val)
    return new_arr

print(parse("ooo")) # [0,0,0]
print(parse("ioioio")) # [1,2,3]
print(parse("idoiido")) # [0,1]
print(parse("isoisoiso")) # [1,4,25]
print(parse("codewars")) # [0]
