# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.gsub(/\s|[:?`!'";!_#\(\)\{\}\[\]@.,-]/, '')
  return s.downcase == s.downcase.reverse ? true : false

  # or
  # s.gsub!(/[^a-zA-Z0-9]/,"") == "" ? true : s.downcase!
  # s == s.reverse
end

p(is_palindrome("A man, a plan, a canal: Panama"))
# Output: true
# Explanation: "amanaplanacanalpanama" is a palindrome.

p(is_palindrome("race a car"))
# Output: false
# Explanation: "raceacar" is not a palindrome.

p(is_palindrome(
    "Marge, let's \"[went].\" I await {news} telegram."
  )) # true

p(is_palindrome("`l;`` 1o1 ??;l`")) # true