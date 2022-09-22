
def find_missing_letter(arr)
  full_arr = (arr.first..arr.last).to_a # ["a", "b", "c", "d", "e", "f"]
  res = full_arr - arr
  res[0]
end

p find_missing_letter(["a","b","c","d","f"]) #e
p find_missing_letter(["O","Q","R","S"]) #P
p find_missing_letter(["b","d"]) # c
p find_missing_letter(["a","b","d"]) # c
p find_missing_letter(["b","d","e"]) # c
