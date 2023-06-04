"""
Oh thank goodness you're here! The last intern has completely ruined everything!

All of our customer's phone numbers have been scrambled, and we need those phone numbers to annoy them with endless sales calls!

The Format
Phone numbers are stored as strings and comprise 11 digits, eg '02078834982' and must always start with a 0.

However, something strange has happened and now all of the phone numbers contain lots of random characters, whitespace and some are not phone numbers at all!

For example, '02078834982' has somehow become 'efRFS:)0207ERGQREG88349F82!' and there are lots more lines that we need to check.

The Task
Given a string, you must decide whether or not it contains a valid phone number. If it does, return the corrected phone number as a string ie. '02078834982' with no whitespace or special characters, else return "Not a phone number".
"""
import re

def is_it_a_num(s: str) -> str:
    m = re.findall('\d', s)
    if not m or m[0] != '0' or len(m) != 11:
      return "Not a phone number"
    else:
      return ''.join(m) # convert to string

print(is_it_a_num("S:)0207ERGQREG88349F82!efRF)")) # "02078834982")
print(is_it_a_num("sjfniebienvr12312312312ehfWh")) # "Not a phone number"
print(is_it_a_num("0192387415456")) # "Not a phone number"
print(is_it_a_num("01277948747"))
print(is_it_a_num("v   uf  f 0tt2eg qe0b 8rtyq4eyq564()(((((165")) # "02084564165")
print(is_it_a_num("stop calling me no I have never been in an accident")) # "Not a phone number"
