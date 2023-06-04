def has_digit(string):
    for char in string:
        if char.isdigit():
            return True
    return False

string1 = "hello123"
string2 = "goodbye"
print(has_digit(string1))  # Output: True
print(has_digit(string2))  # Output: False