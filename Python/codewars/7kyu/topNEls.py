
def largest(n, xs):
    """Find the n highest elements in a list"""
    arr = []
    for x in range(n):
        if len(xs) == 0:
            break
        max_num = max(xs)
        arr.append(max_num)
        xs.remove(max_num)
    return sorted(arr)

    # or
    # arr = sorted(xs, reverse=True)[:n]
    # return sorted(arr)

print(largest(2, [10,9,8,7,6,5,4,3,2,1])) # [9,10])
print(largest(3, [5,1,5,2,3,1,2,3,5])) # [5,5,5])
print(largest(7, [9,1,50,22,3,13,2,63,5])) # [3, 5, 9, 13, 22, 50, 63])


