def contains_duplicate(nums)
  hash = {}

  nums.each do |num|
    if hash[num]
      return true
    else
      hash[num] = 1
    end
  end
  false
end

p(contains_duplicate([1,2,3,1]))
p(contains_duplicate([1,2,3,4]))
