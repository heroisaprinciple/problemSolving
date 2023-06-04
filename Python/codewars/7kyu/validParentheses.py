"""
Write a function that takes a string of parentheses, and determines
if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.

Examples
"()"              =>  true
")(()))"          =>  false
"("               =>  false
"(())((()())())"  =>  true
"""

import re

def valid_parentheses(paren_str):
    while "()" in paren_str:
        paren_str = re.sub(r"\(\)", "", paren_str)
    return paren_str == ""


    # smarter solution:
    # while "()" in x:
    #     x = x.replace("()", "")
    # return x == ""

# all true
print(valid_parentheses("()"))
print(valid_parentheses("((()))"))
print(valid_parentheses("()()()"))
print(valid_parentheses("(()())()"))
print(valid_parentheses("()(())((()))(())()"))

# all false
print(valid_parentheses(")("))
print(valid_parentheses("()()("))
print(valid_parentheses("((())"))
print(valid_parentheses("())(()"))
print(valid_parentheses(")()"))
print(valid_parentheses(")"))
