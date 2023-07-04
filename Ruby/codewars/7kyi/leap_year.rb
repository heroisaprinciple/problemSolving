require 'date'

def is_leap_year(year)
  # return year % 400 == 0 if year % 100 == 0
  # year % 4 == 0

  # or
  # year % 100 == 0 ? year % 400 == 0 : year % 4 == 0

  DateTime.leap?(year)
end

p(is_leap_year(1984)) # true, 'Year 1984 was a leap year!'
p(is_leap_year(2000)) # true, 'Year 2000 was a leap year!'
p(is_leap_year(2004)) # true, 'Year 2004 was a leap year!'
p(is_leap_year(8)) # true, 'Year 8 was a leap year!'

p(is_leap_year(1234)) #  false, 'Year 1234 was NOT a leap year!'
p(is_leap_year(1100)) # false, 'Year 1100 was NOT a leap year!'
p(is_leap_year(1194)) # false, 'Year 1194 was NOT a leap year!'
p(is_leap_year(1978)) # false, 'Year 1978 was NOT a leap year!'