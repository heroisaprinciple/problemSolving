# frozen_string_literal: true
'''
?     - 0 or 1 match
*     - 0 or more
+     - 1 or more
{n}   - exactly n
{n,}  - n or more
{,n}  - n or less (??)
{n,m} - range n to m
'''

p "seven dig moon car lot fire".scan /\w{3}/  # ["sev", "dig", "moo", "car", "lot", "fir"]
p "seven dig moon car lot fire".scan /\b\w{3}\b/ # ["dig", "car", "lot"]


p "color colour colors colours".scan /colou?rs/  # ["colors", "colours"]
p "color colour colors colours".scan /colou?rs?/ # ["color", "colour", "colors", "colours"]
p "color colour colors colours".
  scan /\bcolor\b|\bcolors\b|\bcolour\b|\bcolours\b/ # ["color", "colour", "colors", "colours"]


nums = %w/ 234 1 23 53434 234532453464 23455636
    324f 34532452343452 343 2324 24221 34$34232/

nums.each do |num|
  m = num.match /[0-9]+/

  if m.to_s.eql? num
    puts num
  end
end