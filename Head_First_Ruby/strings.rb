fruit_string = "boulder, apple, banana, peach, cow"
fruit = fruit_string.split(", ") #split the string into an array
fruit.pop #remove last element of array
fruit.shift #remove first element of array
puts fruit.join(", ") #join array back into a string and print