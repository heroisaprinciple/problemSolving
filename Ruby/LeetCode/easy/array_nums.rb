def array_sign(nums)
  product = nums.reduce(:*)
  return 1 if product > 1
  return -1 if product < 0
  return 0 if product == 0

  # or
  # nums.reduce(:*) <=> 0
  # <=>: This is the comparison operator that returns -1 if the left-hand side is less
  # than the right-hand side, 0 if they are equal, and 1 if the left-hand side is
  # greater than the right-hand side.
end