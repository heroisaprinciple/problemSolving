def find_uniq(arr)
  unique_arr = arr.uniq

  unique_arr.map do |el|
    return el if arr.count(el) == 1
  end

end

p find_uniq([ 1, 1, 1, 2, 1, 1 ]) # 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) # 0.55
