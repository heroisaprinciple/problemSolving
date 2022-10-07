# @param {Integer[]} nums
# @return {Integer}

require 'set'

def remove_duplicates(nums)
  nums.uniq.count
end

p remove_duplicates([1, 1, 2])  # 2, nums = [1,2,_]
p remove_duplicates([0,0,1,1,1,2,2,3,3,4])  # 5, nums = [0,1,2,3,4,_,_,_,_,_]

