# frozen_string_literal: true
'''
We can combine characters into character classes with the square brackets.
A character class matches any character that is specified in the brackets.
The /[ab]/ pattern means a or b, as opposed to /ab/ which means a followed by b.
'''
words = %w/ sit MIT fit fat lot pad /

pattern = /[fs]it/

words.each do |word|
  if word.match pattern
    puts "#{word} matches the pattern"
  else
    puts "#{word} does not match the pattern"
  end
end

'''
sit matches the pattern
MIT does not match the pattern
fit matches the pattern
fat does not match the pattern
lot does not match the pattern
pad does not match the pattern
'''