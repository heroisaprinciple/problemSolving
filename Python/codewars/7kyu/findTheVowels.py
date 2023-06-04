"""
We want to know the index of the vowels in a given word, for example, there are two vowels in the word super (the second and fourth letters).

So given a string "super", we should return a list of [2, 4].

Some examples:
Mmmm  => []
Super => [2,4]
Apple => [1,5]
YoMama -> [1,2,4,6]
NOTES
Vowels in this context refers to: a e i o u y (including upper case)
This is indexed from [1..n] (not zero indexed!)
"""
import re
def vowel_indices(word):
    # word = word.lower()
    # vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    # lst = []
    # for index in range(len(word)):
    #     if word[index] in vowels:
    #         lst.append(index + 1)
    # return lst

    # word = word.lower()
    # lst = []
    # for i, x in enumerate(word):
    #     if word[i] in 'aeiouy':
    #         lst.append(i + 1)
    # return lst

    # i is before x, because if I use x firstly, then x is an integer
    return [i + 1 for i, x in enumerate(word.lower()) if x in 'aeiouy']


print(vowel_indices("mmm")) # [], "failed on the word 'mmm'")
print(vowel_indices("apple"))  # [1,5], "failed on the word 'apple'")
print(vowel_indices("123456"))  # [] "failed on the word '123456'")
print(vowel_indices("UNDISARMED")) # [1,4,6,9], "failed on the word 'UNDISARMED'. Consider case")
