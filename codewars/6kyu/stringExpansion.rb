'''
Given a string that includes alphanumeric characters ("3a4B2d") return the expansion of that string:
The numeric values represent the occurrence of each letter preceding that numeric value.
There should be no numeric characters in the final string.

Notes
The first occurrence of a numeric value should be the number of times each character behind
it is repeated, until the next numeric value appears
If there are multiple consecutive numeric characters, only the last one should be
used (ignore the previous ones)

Empty strings should return an empty string.
Your code should be able to work for both lower and capital case letters.

"3D2a5d2f"  -->  "DDDaadddddff"    # basic example: 3 * "D" + 2 * "a" + 5 * "d" + 2 * "f"                                                                                                                                                          "abcde"     -->  "abcde"           # no digits
"1111"      -->  ""                # no characters to repeat
""          -->  ""                # empty string
'''

def string_expansion(s)
  to_arr = s.split('')
  res = []
  num = 1

  to_arr.map do |el|
    if el[/\d/]
      num = el.to_i
    else
      res << el * num
    end
  end

  res.join
end

p string_expansion('3abc') # ('aaabbbccc')
p string_expansion('3D2a5d2f') # ('DDDaadddddff')
p string_expansion('0d0a0v0t0y') # ('')
p string_expansion('3d332f2a') # ('dddffaa')
p string_expansion('abcde') # ('abcde')