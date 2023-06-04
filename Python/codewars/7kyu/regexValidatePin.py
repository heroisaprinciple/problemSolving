"""
ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits.

If the function is passed a valid PIN string, return true, else return false.

Examples (Input --> Output)
"1234"   -->  true
"12345"  -->  false
"a234"   -->  false

In Python's re module, both the match() and fullmatch() functions are used to search for a regular expression pattern in a string.
The main difference between the two is in how they match the pattern to the input string.

match() tries to match the pattern at the beginning of the string. If the pattern matches,
match() returns a match object, otherwise it returns None.

Here's an example:

import re

pattern = re.compile(r'\d+')
text = '123abc'
match = pattern.match(text)
print(match)  # Output: <re.Match object; span=(0, 3), match='123'>

In this example, the regular expression pattern \d+ matches one or more digits.
Since the pattern appears at the beginning of the text string, match() returns a match object
that contains information about the match (the span of characters that match, and the matched string itself).

On the other hand, fullmatch() tries to match the pattern against the entire string.
If the pattern matches the entire string, fullmatch() returns a match object, otherwise it returns None.

Here's an example:

import re

pattern = re.compile(r'\d+')
text = '123abc'
match = pattern.fullmatch(text)
print(match)  # Output: None

In this example, the regular expression pattern \d+ matches one or more digits.
However, since the pattern does not match the entire text string (due to the abc characters at the end), fullmatch() returns None.

So, to summarize:

match() matches the pattern at the beginning of the string.
fullmatch() matches the pattern against the entire string.
In general, fullmatch() is useful when you want to ensure that the entire input
string matches a particular pattern, while match() can be useful when you want to extract
information from the beginning of a string that matches a pattern.
"""

import re

def validate_pin(pin:str) -> bool:
    if re.fullmatch("\d{4}|\d{6}", pin):
        return True
    else:
        return False

    # or
    # if len(pin) == 4 or len(pin) == 6:
    #     if pin.isdigit():
    #         return True
    # return False

print(validate_pin("1234")) # True, "Wrong output for '1234'")
print(validate_pin("0000")) # True, "Wrong output for '0000'")
print(validate_pin("1111")) # True, "Wrong output for '1111'")
print(validate_pin("098765")) #,True, "Wrong output for '098765'")
print(validate_pin("000000")) # ,True, "Wrong output for '000000'")

# false
print(validate_pin("1")) #,False, "Wrong output for '1'")
print(validate_pin("12")) #,False, "Wrong output for '12'")
print(validate_pin("123")) #,False, "Wrong output for '123'")
print(validate_pin("12345")) #,False, "Wrong output for '12345'")
print(validate_pin("1234567")) #,False, "Wrong output for '1234567'")
print(validate_pin('123456x')) # False
