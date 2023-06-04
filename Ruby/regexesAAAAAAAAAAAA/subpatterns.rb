# frozen_string_literal: true

'''
We have the following regex pattern: book(worm)?$. The (worm) is a subpattern.
Only two strings can match: either "book" or "bookworm". The ? character follows the subpattern,
which means that the subpattern might appear 0, 1 time in the final pattern.
The $ character is here for the exact end match of the string (worm if exists must be the last word).
Without it, words like bookstore and bookmania would match too.
'''

p "bookworm" =~ /book(worm)?$/ # 0
p "bookwormworm" =~ /book(worm)?$/ # nil
p "bookworm" =~ /book(worm?)$/ # 0

p "book" =~ /book(worm)?$/ # 0
p "worm" =~ /book(worm)?$/ # nil

p "bookstore" =~ /book(worm)?$/ # nil
p "bookstore" =~ /book(worm)?/ # 0
p "bookstore" =~ /book(worm?)$/ # nil

p '---------'

p "book" =~ /book(shelf|worm)?$/ # 0
p "bookshelf" =~ /book(shelf|worm)?$/ # 0
p "bookworm" =~ /book(shelf|worm)?$/ # 0
p "bookstore" =~ /book(shelf|worm)?$/ # nil

p '-------'
p 'November' =~ /[nN]ov(ember)?/ # 0
p 'Nov' =~ /[nN]ov(ember)?/ # 0
p 'Nove' =~ /[nN]ov(ember)?/ # 0
p 'Novemberyeah' =~ /[nN]ov(ember)?/ # 0
p 'Novemberyeah' =~ /[nN]ov(ember)?$/ # nil