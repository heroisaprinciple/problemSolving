def wave(str)
  res = []
  # we will create an array from the string in the loop and fill it with every capital element
  # so, if we created an array from the string before the loop,
  # it will be like ['Hello', 'HEllo', 'HELlo'...]

  # why .each, not .map?
  # Yes, both iterate over the array (actually, over anything that mixes in Enumerable)
  # but map will return an Array composed of the block results while each will just return the original Array.
  #
  # The return value of each is just the original array and is rarely used in Ruby code but map is one of the most
  # important functional tools.
  #
  # What map does is return an array which contains the results of the block or named method that is passed.
  # So, if we used .map instead of .each, then only capital letters will be returned

  # Each -> returns same array
  # Map & collect -> returns new array with code executed in block for each element
  # Select -> return new array for the which give block is true
  for i in (0..str.length - 1)
    res << str.split('').each.with_index { |val, _idx| val.upcase! if i == _idx }
              .join unless str.split('')[i] == ' '
  end

  res
end

puts wave("hello") # => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
puts wave("codewars") # ["Codewars", "cOdewars", "coDewars", "codEwars", "codeWars", "codewArs", "codewaRs", "codewarS"]
puts wave('two words') # ["Two words", "tWo words", "twO words", "two Words", "two wOrds", "two woRds", "two worDs", "two wordS"]
