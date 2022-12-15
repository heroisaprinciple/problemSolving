# frozen_string_literal: true

'''
Complete the solution so that the function will break up camel casing, using a space between words.

Example
"camelCasing"  =>  "camel Casing"
"identifier"   =>  "identifier"
""             =>  ""
'''

def solution(string)
  # TODO: my solution
  arr = string.chars
  arr.map{|el| el == el.capitalize ? ' ' + el : el}.join

  # TODO: using regexes
  string.gsub(/([A-Z])/, ' \1')
end

p solution('camelCasing') #'camel Casing'
p solution('camelCasingTest') # 'camel Casing Test'
p solution('identifier') # identifier

