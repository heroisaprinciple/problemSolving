def check(arr,element)
  arr.each do |el|
    if el == element
      return true
    end
  end

  false

  # or
  # arr.include?(element)
end

p check([66, 101], 66) # true
p check([78, 117, 110, 99, 104, 117, 107, 115], 8) # false
p check(["t", "e", "s", "t"], "e") # true

