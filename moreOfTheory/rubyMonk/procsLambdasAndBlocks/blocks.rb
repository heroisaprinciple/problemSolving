# frozen_string_literal: true

'''
Ruby optimizes for this use case by offering the yield keyword that can call a single lambda that
has been implicitly passed to a method without using the parameter list.

A source: Ruby Monk
'''
def calculate(a, b)
  yield(a, b)
end

p calculate(3, 2) {|a, b| a - b } # lambda func but without 'lambda' declaration