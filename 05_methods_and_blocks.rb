
### Methods
# Also called functions, procedures ... in other programming langauges
# Methods store a piece of code / some kind of logic, to be able to reuse it
# Method is defined with the def key word closes with an end
# Method takes a name ( the same ruby naming convention applies small_snake_case)
# Methods may / or may not take parameters
# The number of parameter need to match the number of arguments when the method is invoked / called
# Method may or may not return a value
# The return key word is optional ( in ruby )
# The last line of a method will always be returned

def add_two(number)
  number + 2
end

number1 = add_two(4)
number2 = add_two(5)
number3 = add_two(7)

p number1
p number2
p number3


students = ["Carl", "Julia", "Raphael", "Mark"]
# Define the method
# Method define with parameters
def display_names(team_array, team_name)
  team_array.each do |member|
    # puts "#{member} is a #{team_name} member!"
  end
end

# Call / invoke / use the method
# To use a method all I have to do is invoke its name
# A methoid is called with arguments
display_names(students, "The Coders")
puts " "
display_names(["Charles", "Nathan", "Carolina"], "The Players")

# Naming convention
# Methods that end with ?
# Are methods that will (almost) always return a boolean
12.even?
1.odd?

def is_even?(number)
  number % 2 == 0
end

p is_even?(22)
p is_even?(21)

# Methods that end with !
# Are Dangerous methods / Desctructive methods
# They tranform the data data they have been called on
name = "soufiane"
p name.capitalize!
p name # name variable content has been altered


