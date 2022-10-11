'''

Complete the method/function so that it converts dash/underscore delimited words into camel casing.
The first word within the output should be capitalized only if the original word was capitalized
(known as Upper Camel Case, also often referred to as Pascal case).

Examples
"the-stealth-warrior" gets converted to "theStealthWarrior"
"The_Stealth_Warrior" gets converted to "TheStealthWarrior"

'''

def to_camel_case(str)
  # TODO: my solution
  arr = str.split('')
  arr.map.with_index do |_el, idx|
    if arr[idx] == '-' || arr[idx] == '_'
      arr[idx + 1] = arr[idx + 1].upcase
    end
  end
  arr
  arr.reject{|char| char == '-' || char == '_'}.join


  # TODO: solution using split, regex and map
  str.split(/-|_/).map.with_index{|w, i| i == 0 ? w : w.capitalize}.join

  # TODO: using regexes (the best option)
  str.gsub(/[_-](.)/) {"#{$1.capitalize}"}
end

p to_camel_case('') # '',
p to_camel_case("the_stealth_warrior") #"theStealthWarrior",
p to_camel_case("The-Stealth-Warrior") # "TheStealthWarrior",
p to_camel_case("A-B-C") # "ABC",