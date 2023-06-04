"""
Description:
Remove words from the sentence if they contain exactly one exclamation mark.
Words are separated by a single space, without leading/trailing spaces.
"""

def remove(s:str) -> str:
  arr = s.split(' ')
  results = []
  for x in arr:
    if x.count('!') != 1:
      results.append(x)
  return ' '.join(results)

  # better solution
  # return " ".join(w for w in s.split(" ") if w.count('!') != 1)


print(remove('Hi!')) # ''
print(remove('Hi!!!')) #'Hi!!!'
print(remove('!Hi')) # ''
print(remove('!Hi!')) # '!Hi!'
print(remove('Hi! Hi!')) # ''
print(remove('!!!Hi !!hi!!! !hi')) #  '!!!Hi !!hi!!!'
print(remove('!Hi! ! !Hi!')) # '!Hi! !Hi!'
