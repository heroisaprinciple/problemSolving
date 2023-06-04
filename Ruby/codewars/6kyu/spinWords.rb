=begin

Write a function that takes in a string of one or more words, and returns the same string,
but with all five or more letter words reversed (Just like the name of this Kata).
Strings passed in will consist of only letters and spaces.
Spaces will be included only when more than one word is present.

Examples:

spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw"
spinWords( "This is a test") => returns "This is a test"
spinWords( "This is another test" )=> returns "This is rehtona test

=end


def spin_words(string)
  arr = string.split(' ')
  arr.map { |el| el.length >= 5 ? el.reverse! : el }.join(' ')
end

puts spin_words("Welcome") # "emocleW"
puts spin_words("Hey fellow warriors") # "Hey wollef sroirraw"
puts spin_words( "This is a test") # => returns "This is a test"
puts spin_words( "This is another test" ) # => returns "This is rehtona test"