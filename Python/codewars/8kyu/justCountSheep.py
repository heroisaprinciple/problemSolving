"""
Given a non-negative integer, 3 for example, return a string with a murmur: "1 sheep...2 sheep...3 sheep...". Input will always be valid, i.e. no negative integers.
"""

def count_sheep(n: int) -> str:
    sentence = ""

    if n == 0:
      return ""

    for i in range(1, n + 1):
      sentence += f"{i} sheep..."
    return sentence

    # considered a better practice:
    # return "".join(f"{i} sheep" for i in range(1, n + 1))



print(count_sheep(0)) # ""
print(count_sheep(1)) # "1 sheep..."
print(count_sheep(2)) # "1 sheep...2 sheep..."
print(count_sheep(3)) # "1 sheep...2 sheep...3 sheep..."
