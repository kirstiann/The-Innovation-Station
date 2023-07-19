# The Innovation Station

# Our goal is to use Python to create tools and applications
# that can be used to solve challenging problems.

# File 1

# Imports
import time  # For timing functions
import math  # For math functions
import random  # For random numbers

# Functions
def time_spent(seconds):
    """Calculate and return the amount of time spent
    in hours, minutes, and seconds.
    """
    hours = seconds // 3600
    minutes = (seconds % 3600) // 60
    seconds = (seconds % 3600) % 60
    return hours, minutes, seconds

def missing_angle(angle1, angle2):
    """Calculate and return the missing angle of a triangle
    given two angles.
    """
    return 180 - (angle1 + angle2)

def sum_numbers(num_list):
    """Calculate and return the sum of the numbers in the given list.
    """
    total = 0
    for num in num_list:
        total += num
    return total

# Main Program
start_time = time.time()  # Start the timer

# Generate a list of random numbers
random_nums = []
for num in range(10):
    random_nums.append(random.randint(1, 10))

# Find the sum of the random numbers
total_sum = sum_numbers(random_nums)

# Find the missing angle of a triangle
angle1, angle2 = 30, 70
missing_angle = missing_angle(angle1, angle2)

# Calculate and print the amount of time spent
elapsed_time = time.time() - start_time
hours, minutes, seconds = time_spent(elapsed_time)
print('Time spent: ', hours, 'hours,', minutes, 'minutes,', seconds, 'seconds')

# Print results
print('The sum of the random numbers is: ', total_sum)
print('The missing angle of the triangle is: ', missing_angle)