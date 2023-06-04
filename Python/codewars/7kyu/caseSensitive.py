"""
Your task is very simple. Given an input string s, case_sensitive(s), check whether all letters are
lowercase or not. Return True/False and a list of all the entries that are not lowercase in order
of their appearance in s.

For example, case_sensitive('codewars') returns [True, []], but case_sensitive('codeWaRs')
returns [False, ['W', 'R']].

Goodluck :)
"""

def case_sensitive(s):
  if s.lower() == s: return [True, []]
  return [False, [x for x in s if x == x.upper()]]

print(case_sensitive('asd')) # [True, []])
print(case_sensitive('cellS')) # [False, ['S']])
print(case_sensitive('z')) # [True, []])
print(case_sensitive('')) # [True, []])
