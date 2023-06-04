"""
An AI has infected a text with a character!!

This text is now fully mutated to this character.

If the text or the character are empty, return an empty string.
There will never be a case when both are empty as nothing is going on!!

Note: The character is a string of length 1 or an empty string.

Example
text before = "abc"
character   = "z"
text after  = "zzz"
"""

import re

def contamination(text, char) -> str:
     # return len(text) * char
     return re.sub(".", text, char)


print(contamination("abc","z")) # "zzz"
print(contamination("","z")) # ""
print(contamination("abc","")) # "")
print(contamination("_3ebzgh4","&")) # "&&&&&&&&")
print(contamination("//case", " ")) # "      ")
