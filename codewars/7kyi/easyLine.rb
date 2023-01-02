# frozen_string_literal: true
"""
In the drawing below we have a part of the Pascal's triangle, horizontal lines are numbered from zero (top).

We want to calculate the sum of the squares of the binomial coefficients on a given horizontal line with a
function called easyline (or easyLine or easy-line).

Can you write a program which calculate easyline(n) where n is the horizontal line number?

The function will take n (with: n>= 0) as parameter and will return the sum of the squares of the binomial
coefficients on line n.

Examples:
easyline(0) => 1
easyline(1) => 2
easyline(4) => 70
easyline(50) => 100891344545564193334812497256
"""

def fact(n)
  n == 0 || n == 1 ? 1 : n * fact(n - 1)
end

def binomial(n, k)
  (n - k <= 0 || k <= 0) ? 1 :
    fact(n) / (fact(k) * fact(n - k)) # combinations
end

def filling_the_line(nth_line)
  (0..nth_line).map { |e| binomial(nth_line, e)}
end

def easyline(n)
  filling_the_line(n).map { |x| x ** 2 }.sum
end

p easyline(0) # 1
p easyline(1) # 2
p easyline(2) # 6
p easyline(3) # 20
p easyline(4) # 70
p easyline(7) #3432
p easyline(13) #10400600
p easyline(50) # 100891344545564193334812497256
