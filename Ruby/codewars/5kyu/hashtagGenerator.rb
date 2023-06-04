# frozen_string_literal: true
"""
The marketing team is spending way too much time typing in hashtags.
Let's help them with our own Hashtag Generator!

Here's the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.
Examples
' Hello there thanks for trying my Kata'  =>  '#HelloThereThanksForTryingMyKata'
'    Hello     World   '                  =>  '#HelloWorld'
''                                        =>  false
"""

def generateHashtag(str)
  arr = str.split.map(&:capitalize)
  arr.empty? || arr.join.length >= 140 ? false : '#' + arr.join
end

p generateHashtag(" Hello there thanks for trying my Kata") # "#HelloThereThanksForTryingMyKata"
p generateHashtag("    Hello     World   "                 ) # "#HelloWorld"
p generateHashtag("") #  false
p generateHashtag('L' * 140) # false

p generateHashtag(" Hello there thanks for trying my Kata").length