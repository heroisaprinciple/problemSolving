"""
Find difference between max and min
"""

def between_extremes(numbers):
    maximum = max(numbers)
    minimum = min(numbers)
    return maximum - minimum

print(between_extremes([1, 1])) # 0,
print(between_extremes([21, 34, 54, 43, 26, 12])) # 42
print(between_extremes([-1, -41, -77, -100])) # 99
