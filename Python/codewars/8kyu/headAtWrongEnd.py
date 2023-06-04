def fix_the_meerkat(arr) -> list:
    temp = arr[0]
    arr[0] = arr[-1]
    arr[-1] = temp
    return arr

    # considered a better practive
    # arr = reverse()
    # return arr
    # or
    # return arr[::-1]

print(fix_the_meerkat(["tail", "body", "head"])) # ["head", "body", "tail"])
print(fix_the_meerkat(["tails", "body", "heads"])) # ["heads", "body", "tails"])
print(fix_the_meerkat(["bottom", "middle", "top"])) # ["top", "middle", "bottom"])
print(fix_the_meerkat(["lower legs", "torso", "upper legs"])) # ["upper legs", "torso", "lower legs"])
print(fix_the_meerkat(["ground", "rainbow", "sky"])) # ["sky", "rainbow", "ground"])
