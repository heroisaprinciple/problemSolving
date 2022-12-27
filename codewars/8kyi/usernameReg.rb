# frozen_string_literal: true
'''
Write a simple regex to validate a username. Allowed characters are:

lowercase letters,
numbers,
underscore
Length should be between 4 and 16 characters (both included).
'''

def validate_usr(username)
  username.match(/^[a-z\d_]{4,16}$/) ? true : false
  # This accepts any number of digits, including none.
end

p validate_usr('asddsa') # true
p validate_usr('a') # false
p validate_usr('Hass') # false
p validate_usr('Hasd_12assssssasasasasasaasasasasas') # false
p validate_usr('') # false
p validate_usr('____') # true
p validate_usr('012') # false
p validate_usr('p1pp1') # true
p validate_usr('asd43 34') # false
p validate_usr('asd43_34') # true