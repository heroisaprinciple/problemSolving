# frozen_string_literal: true

'''
Complete the function/method so that it takes a PascalCase string and returns the string in snake_case
notation. Lowercase characters can be numbers. If the method gets a number as input, it should return a string.

Examples
"TestController"  -->  "test_controller"
"MoviesAndBooks"  -->  "movies_and_books"
"App7Test"        -->  "app7_test"
1                 -->  "1"
'''

def to_underscore(string)
  string.is_a?(Numeric) ? string.to_s : string.to_s.split(' ').
    map {|word| word.gsub(/([a-z\d](?=[A-Z]))/, '\1_').downcase}.join

  # TODO: using split by regex exp
  # string.to_s.split(/(?=[A-Z])/).join('_').downcase

  # TODO: using some capture groups
  # string.to_s.gsub(/(.)([A-Z])/, '\1_\2').downcase
end

p to_underscore("TestController") # "test_controller"
p to_underscore("MoviesAndBooks") # "movies_and_books"
p to_underscore("App7Test") # "app7_test"
p to_underscore(1) # "1"