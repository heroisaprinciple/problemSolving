"""
Write a function insert_dash(num) / insertDash(num) / InsertDash(int num) that will insert dashes ('-')
between each two odd digits in num. For example: if num is 454793 the output should be 4547-9-3.
Don't count zero as an odd digit.

Note that the number will always be non-negative (>= 0).

From ChatGPT:
- Why doesn't enumerate(arr, start = 1) work? if we start from the second element?

- Starting the enumeration from the second element using enumerate(arr, start=1) would still result in the same
IndexError problem, because we're trying to access the previous element using arr[i - 1] in the first iteration of the loop.

Even though we're starting the loop at index 1 using start=1, the value of
i is still 0 in the first iteration of the loop, because the start parameter
only affects the value of the enumeration index, not the loop index.

To illustrate this, consider the following code:

arr = [1, 2, 3]
for i, n in enumerate(arr, start=1):
    print(i, n)
The output of this code will be:

1 1
2 2
3 3

As you can see, the value of i starts at 1, but the value of n starts at arr[0], which is the first element of the list.

To avoid the IndexError, we need to start the loop at index 1 using arr[1:] instead of using enumerate(arr, start=1).
"""
import re

def insert_dash(num):
    arr = list(str(num))
    for i, n in enumerate(arr[1:], start=1):
        if int(arr[i]) % 2 != 0 and int(arr[i - 1]) % 2 != 0:
            arr[i] = '-' + n
    return ''.join(arr)

    # better practice:
    # return re.sub(r'([13579])(?=[13579])', r'\1-', str(num))

print(insert_dash(454793)) #'4547-9-3'
print(insert_dash(123456)) # '123456'
print(insert_dash(1003567)) # '1003-567'
print(insert_dash(24680)) # '24680'
print(insert_dash(13579)) #'1-3-5-7-9'
