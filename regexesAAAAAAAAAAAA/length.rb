# frozen_string_literal: true


# The ‹^› and ‹$› anchors ensure that the regex matches the entire subject string; otherwise,
# it could match 10 characters within longer text.
# ^[A-Z]{1,10}$

# We want to find if this string is exactly four letters long, this will
# still match because it has more than four, but it's not what we want.

p "Regex are cool".match /\w{4}/ # rege

p "Regex are cool".match /\w{4,}/ # regex

# Instead we will use the 'beginning of line' and 'end of line' modifiers

p "Rege".match /^\w{4}$/ # rege

p "Regex are cool".match /^\w{4}$/ # nil

# This time it won't match. This is a rather contrived example, since we could just
# have used .size to find the length, but I think it gets the idea across.