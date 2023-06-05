# Given an integer num, repeatedly add all its digits until the result has only one digit, and return it.
#   Example 1:
#   Input: num = 38
#
# Output: 2
# Explanation: The process is
# 38 --> 3 + 8 --> 11
# 11 --> 1 + 1 --> 2
# Since 2 has only one digit, return it.

# @param {Integer} num
# @return {Integer}

def add_digits(num)
  while num > 9
    digit1 = num / 10    # 3
    digit2 = num % 10   # 8
    num = (digit1 + digit2)
  end
  num
end

p(add_digits(38))