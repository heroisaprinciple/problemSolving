"""
In some countries of former Soviet Union there was a belief about lucky tickets. A transport
ticket of any sort was believed to posess luck if sum of digits on the left half of its number was equal
to the sum of digits on the right half. Here are examples of such numbers:

003111    #             3 = 1 + 1 + 1
813372    #     8 + 1 + 3 = 3 + 7 + 2
17935     #         1 + 7 = 3 + 5  // if the length is odd, you should ignore the middle number when
adding the halves.

56328116  # 5 + 6 + 3 + 2 = 8 + 1 + 1 + 6
Such tickets were either eaten after being used or collected for bragging rights.

Your task is to write a function luck_check(str), which returns true/True if argument is string decimal
representation of a lucky ticket number, or false/False for all other numbers. It should throw errors
for empty strings or strings which don't represent a decimal number.
"""

def luck_check (str)
  raise ArgumentError if str[/\D+/] || str.empty?

  start = str[0..str.length / 2 - 1]
  finish = str[str.length / 2..str.length - 1]
  s = 0
  f = 0
  start.split("").each { |x| s += x.to_i }
  finish.split("").each { |x| f += x.to_i }
  s == f && start.length == finish.length ? true : false
end

p(luck_check('683179')) # true, "The function doesn't recognise a lucky ticket number"
p(luck_check('683000')) # false, 'The function doesn\'t return true for a wrong number'
p(luck_check('17935')) # 1 + 7 = 3 + 5  // if the length is odd, you should ignore the middle number when adding the halves.
p(luck_check('6F43E8')) # error