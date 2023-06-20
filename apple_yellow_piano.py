#This is an example of an introductory Python file for 'The Innovation Station'

#The following code imports necessary libraries
import math 
import random 
import datetime

#The following code defines the function for generating random integer 
#within a range of numbers
def random_int (min, max):
    return random.randint(min, max)

#The following code defines the function for calculating the area of a triangle
def area_of_triangle (base, height):
    area = 0.5 * base * height
    return area 

#The following code defines the function for calculating the circumference of a circle
def circumference_of_circle (radius):
    circumference = 2 * math.pi * radius
    return circumference 

#The following code defines the function for calculating the volume of a sphere
def volume_of_sphere (radius):
    volume = (4/3)* math.pi * (radius**3)
    return volume 

#The following code defines the function for finding the current date and time
def current_date_time():
    current_date = datetime.datetime.now()
    return current_date

#The following code defines the function for calculating the area of a rectangle
def area_of_rectangle(length, width):
    area = length * width
    return area

#The following code defines the function for calculating the temperature in 
#fahrenheit to celsius
def fahrenheit_to_celsius(temp):
    celsius = (temp - 32) * (5 / 9)
    return celsius

#The following code defines the function for calculating the distance between two points
def distance_between_points(x1, y1, x2, y2):
    distance = math.sqrt( ((x1-x2)**2)+((y1-y2)**2))
    return distance

#The following code defines a function for reversing a string
def reverse_string(string):
    string_length = len(string)
    reversed_string = ""
    for i in range(string_length):
        reversed_string += string[string_length-1-i]
    return reversed_string

#The following code defines a function for counting the number of words in a string
def count_words(string):
    words = string.split()
    number_of_words = len(words)
    return number_of_words

#The following code defines a function for checking if a string is a palindrome
def palindrome_check(string):
    reversed_string = reverse_string(string)

    if reversed_string == string:
        return True
    else:
        return False

#The following code defines a function for calculating the average of a list
def average_list(numbers):
    sum_of_numbers = 0
    for number in numbers:
        sum_of_numbers += number

    average = sum_of_numbers / len(numbers)
    return average

#The following code defines a function for finding the maximum of a list
def find_max(numbers):
    maximum = numbers[0]
    for number in numbers:
        if number > maximum:
            maximum = number
    return maximum

#The following code defines a function for finding the minimum of a list
def find_min(numbers):
    minimum = numbers[0]
    for number in numbers:
        if number < minimum:
            minimum = number 
    return minimum