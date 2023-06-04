'''
Write a function, persistence, that takes in a positive parameter num and returns its multiplicative persistence,
which is the number of times you must multiply the digits in num until you reach a single digit.

For example (Input --> Output):

39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
4 --> 0 (because 4 is already a one-digit number)


+ 1 тому що там рекурсія

9*3= 27 > 10
7*2=14 > 10
4*1=4

4 < 10 тому вертаємося І вертаємо 0

1+0=1
1+1=2
1+2=3
'''

def persistence(n)
  n < 10 ? 0 : 1 + persistence(n.digits.reverse.inject{|c, n| c * n})

  # or using ruby idioms
  n < 10 ? 0 : 1 + persistence(n.digits.reverse.reduce(&:*))
end

p persistence(39) # 3
p persistence(4) # 0
p persistence(25) # 2
p persistence(999) # 4
p persistence(444) # 3