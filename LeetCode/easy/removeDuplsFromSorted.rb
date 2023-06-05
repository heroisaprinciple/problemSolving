# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  # Values at this index and below are as we want them in the solution.
  # The first value (index 0) will always be the same as in the input.
  solved_marker = 0

  nums.each_with_index do |num, i|
    # If we encounter a number that's not in the solution yet, insert it
    # at the next open spot and increment the solved_marker.
    if num != nums[solved_marker]
      solved_marker += 1
      nums[solved_marker] = num
    end
  end

  # The length of the unique part of the array will be one greater than its highest index
  solved_marker + 1
end

puts(remove_duplicates([0,0,1,1,1,2,2,3,3,4]))
# Output: 5, nums = [0,1,2,3,4,_,_,_,_,_]
# Explanation: Your function should return k = 5, with the first five elements of nums being 0, 1, 2, 3,
# and 4 respectively.
# It does not matter what you leave beyond the returned k (hence they are underscores).