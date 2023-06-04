# frozen_string_literal: true
addition = lambda {|a, b| return a + b }
puts addition.call(5, 6) # 11

# or
addition_eq = -> (a, b) { a + b }
puts addition_eq.call(5, 7) # 12