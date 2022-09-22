def is_palindrome (str)
  downcased_str = str.downcase
  downcased_str == downcased_str.reverse ? true : false
end

puts is_palindrome("aba")
puts is_palindrome("Abba")
puts is_palindrome("hello") # false
puts is_palindrome("Bob")
puts is_palindrome("")