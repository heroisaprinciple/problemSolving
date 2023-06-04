"""
Introduction
There is a war and nobody knows - the alphabet war!
There are two groups of hostile letters. The tension between left side letters and right side letters was too
high and the war began.

Task
Write a function that accepts fight string consists of only small letters and return who wins the fight. When
the left side wins return Left side wins!, when the right side wins return Right side wins!, in other case
 return Let's fight again!.

The left side letters and their power:

 w - 4
 p - 3
 b - 2
 s - 1
The right side letters and their power:

 m - 4
 q - 3
 d - 2
 z - 1
The other letters don't have power and are only victims.

Example
AlphabetWar("z");        //=> Right side wins!
AlphabetWar("zdqmwpbs"); //=> Let's fight again!
AlphabetWar("zzzzs");    //=> Right side wins!
AlphabetWar("wwwwwwz");  //=> Left side wins!
"""

def alphabet_war(fight):
    arr = list(fight)
    left_side = {'w': 4, 'p': 3, 'b': 2, 's': 1}
    right_side = {'m': 4, 'q': 3, 'd': 2, 'z': 1}
    left_sum = 0
    right_sum = 0
    for x in arr:
        if x in left_side:
            left_sum += left_side[x]
        elif x in right_side:
            right_sum += right_side[x]
    if left_sum > right_sum:
        return 'Left side wins!'
    elif right_sum > left_sum:
        return 'Right side wins!'
    else:
        return "Let's fight again!"

print(alphabet_war("z")) # "Right side wins!"
print(alphabet_war("zdqmwpbs")) # "Let's fight again!"
print(alphabet_war("wq")) # "Left side wins!"
print(alphabet_war("zzzzs")) # "Right side wins!"
print(alphabet_war("wwwwww")) # "Left side wins!
