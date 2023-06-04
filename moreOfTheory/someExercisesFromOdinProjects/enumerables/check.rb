arr = [1, 2, 3, 4, 5, 6]
even = arr.select{|el| el.even? } # it will choose even elemtnts
print even
print arr
# [2, 4, 6][1, 2, 3, 4, 5, 6]
puts '------'

even_map = arr.map{|el| el.even?} # it will choose which el can be even
print even_map
print arr
# [false, true, false, true, false, true][1, 2, 3, 4, 5, 6]
puts '------'

mul_by2 = arr.select{|el| el * 2} # it will choose which els can me multiplied by 2
print mul_by2
# [1, 2, 3, 4, 5, 6]

mul_by2_map =  arr.map{|el| el * 2} # it will multiply every el by 2
print mul_by2_map
# [2, 4, 6, 8, 10, 12]


puts '----------------------------------------------------------'
puts '----------------------------------------------------------'
puts '----------------------------------------------------------'
reduced = arr.reduce(0) {|acc, next_el| acc - next_el}
print reduced

