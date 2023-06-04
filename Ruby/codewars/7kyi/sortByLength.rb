def sort_by_length(arr)
  arr.sort_by(&:length)
end

p sort_by_length(%w[Telescopes Glasses Eyes Monocles]) # ["Eyes", "Glasses", "Monocles", "Telescopes"]
