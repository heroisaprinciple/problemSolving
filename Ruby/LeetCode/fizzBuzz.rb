'''
Given an integer n, return a string array answer (1-indexed) where:

  answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
    answer[i] == "Fizz" if i is divisible by 3.
    answer[i] == "Buzz" if i is divisible by 5.
    answer[i] == i (as a string) if none of the above conditions are true.
'''
# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  new_arr = []
  (1..n).each do |i|
    if i % 15 == 0
      new_arr[i] = 'FizzBuzz'
    elsif i % 3 == 0
      new_arr[i] = 'Fizz'
    elsif i % 5 == 0
      new_arr[i] = 'Buzz'
    else
      new_arr[i] = i.to_s
    end

  end
  p new_arr.slice(1...new_arr.length)
end


fizz_buzz(3) # ["1","2","Fizz"]
fizz_buzz(5) # ["1","2","Fizz","4","Buzz"]
fizz_buzz(15) # ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
