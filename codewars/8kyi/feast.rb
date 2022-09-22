=begin

All of the animals are having a feast! Each animal is bringing one dish. There is just one rule: the dish must start and end with the same letters as the animal's name. For example, the great blue heron is bringing garlic naan and the chickadee is bringing chocolate cake.

Write a function feast that takes the animal's name and dish as arguments and returns true or false to indicate whether the beast is allowed to bring the dish to the feast.

Assume that beast and dish are always lowercase strings, and that each has at least two letters. beast and dish may contain hyphens and spaces, but these will not appear at the beginning or end of the string. They will not contain numerals.

=end

def feast(beast, dish)
  beastArray = beast.downcase.split('')
  dishArr = dish.downcase.split('')

  if beastArray.length >= 2 && dishArr.length >= 2
    puts beastArray.first == dishArr.first && beastArray.last == dishArr.last ? true : false
  end

end

feast("great blue heron", "garlic naan")
feast("chickadee", "chocolate cake")
feast("brown bear", "bear claw")
feast("brown", "bear claw")
feast("dsbu", "rtfekuuswwuhrwaqrndv")