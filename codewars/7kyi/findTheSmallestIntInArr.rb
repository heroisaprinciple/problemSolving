=begin

Given an array of integers your solution should find the smallest integer.

For example:

Given [34, 15, 88, 2] your solution will return 2
Given [34, -345, -1, 100] your solution will return -345
You can assume, for the purpose of this kata, that the supplied array will not be empty.

=end

def find_smallest_int(arr)
  for idx in 1..(arr.length - 1)
    for inner_idx in 0..(arr.length - 1)
      if arr[inner_idx] > arr[idx]
        temp = arr[inner_idx]
        arr[inner_idx] = arr[idx]
        arr[idx] = temp
      end
    end
  end
  arr[0]

  # or just arr.min
end

p find_smallest_int([34, 15, 88, 2]) #2
p find_smallest_int([34, -345, -1, 100]) # -345
p find_smallest_int([78, 56, -2, 12, 8]) # 8
p find_smallest_int([78,56, 2, 12, 8]) # -2

