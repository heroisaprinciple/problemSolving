# frozen_string_literal: true

'''
A block created with lambda behaves like a method when you use return and simply exits
the block, handing control back to the calling method.

A block created with Proc.new behaves like it’s a part of the calling method when
 return is used within it, and returns from both the block itself as well as the
 calling method.
'''

def a_method
  lambda { return "we just returned from the block" }.call
  "we just returned from the calling method"
end

puts a_method # we just returned from the calling method

def b_method
  Proc.new { return "we just returned from the block" }.call
  "we just returned from the calling method"
end

puts b_method # we just returned from the block


# Kernel#proc factory method is identical to Proc.new.
# Note that proc is a method and not a literal form like -> nor a keyword like yield.

short = proc { |a, b| a + b }
puts short.call(2, 3)

long = Proc.new { |a, b| a + b }
puts long.call(2, 3)