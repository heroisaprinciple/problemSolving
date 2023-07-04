# Should return ᐃ type:
#  0 : if ᐃ cannot be made with given sides
#  1 : acute ᐃ
#  2 : right ᐃ
#  3 : obtuse ᐃ

def triangle_type (a, b, c)
  return 0 unless a + b > c && b + c > a && a + c > b

  a, b, c = [a, b, c].sort.map{ |n| n ** 2 }
  return 1 if a + b > c
  return 2 if a + b == c
  return 3 if a + b < c
end

p(triangle_type(7,3,2)) #  0  # Not triangle
p(triangle_type(2,4,6)) # 0  # Not triangle
p(triangle_type(8,5,7)) # 1  # Acute
p(triangle_type(3,4,5)) # 2  # Right
p(triangle_type(7,12,8)) # 3 # Obtuse
