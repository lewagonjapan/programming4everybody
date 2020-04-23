# **Methods**

# Declare a method (nothing gets executed, I just assign the method!)
def say_hello
  puts "Hello!"
end

# Call the method
say_hello

# Method with 1 argument
def print_reversed_name(name)
  puts "Your name reversed is #{name.reverse}"
end

# Call the method and pass the argument(s)
print_reversed_name("gabriele")

# Method with 2 arguments
def sum(a, b)
  puts a + b
end

sum(3, 7) # call it!

##########

# Splat operator
def print_reversed_names(*names) # <- use a star!
  names.each do |name|
    puts name.reverse
  end
end

# I can now pass one or multiple arguments (as many as I want!), and they will all go inside the array names
print_reversed_names("gabriele", "mariana", "shannon")
# in this case, inside the method, we'll have names = ["gabriele", "mariana", "shannon"]

#########

# Print/puts vs return

# 1. Print/puts

def print_reversed_name(name)
  puts name.reverse
end

print_reversed_name("gabriele")

# 2. Return

def reverse_name(name)
  return name.reverse # it's not going to print, but just give it back in my code!
end

my_name_reversed = reverse_name("gabriele") # => "eleirbag"
puts "My name reversed is #{my_name_reversed}"

##########

# Methods vs blocks

# 1. Methods

def square(*numbers) # assign the method
  numbers.each do |n|
    puts n**2
  end
end

square(2, 3, 4) # call the method

# 2. Blocks

numbers = [2, 3, 4]
numbers.each do |n|
  puts n**2 # no method here, what is inside the each is called a **block**
end

#########

# Sorting

# Numbers
numbers = [12, 43, 11, 0, -13, 2332]
puts "The numbers are:"
puts numbers
numbers.sort!
puts "After sorting them, I get:"
puts numbers

# Strings
names = ["shannon", "mariana", "carlos", "gabriele"]
puts "Le Wagon people:"
puts names
puts "Let's sort them alphabetically!"
names.sort!
puts names

##########

# Combined comparison operator:
# 0  -> they are equal
# -1 -> the first one is less/before the second one (if is a string it considers the order!)
# 1  -> the first one is more/after the second one

name_1 = "gabriele"
name_2 = "mariana"
puts name_1 <=> name_2 # => -1, because "gabriele" comes before "mariana"

##########

# Sorting with the combined comparison operator

names = ["shannon", "mariana", "carlos", "gabriele"]
puts "Le Wagon people:"
puts names
puts "Let's sort them in descending order!"
# Also the sort method can take a block!
names.sort! do |name_1, name_2|
  name_2 <=> name_1
end
puts names

# Don't worry too much about the combined comparison operator, it is more advanced and not very common!
# Another (simpler) way would be:
names.sort!.reverse!
puts names
