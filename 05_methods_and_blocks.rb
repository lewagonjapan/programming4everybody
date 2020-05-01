
### Methods
# Why do we need methods?
# To keep or code DRY (Don't Repeat Yourself)

# How to define a method?
def method_name

end

# Example:
# Beautify name - return full name, first name cap, last name upcase

## Defining a method

def beautify_name(first, last) # *first* and *last* are called parameters
  capitalized_first = first.capitalize
  upcased_last = last.upcase

  full_name = capitalized_first + " " + upcased_last
  # full_name = "#{capitalized_first} #{upcased_last}"

  return full_name
end

# Calling the method
puts beautify_name("sylvain", "pierre") # we pass 2 arguments

# A method should *RETURN* a value, not puts

# Remember the method *signature*:
# - What is the name of the method?
# - How many parameters (and what type)?
# - What does the method return (and what type)?

# We can combine methods with variables:
first_name = "douglas"
last_name = "berkley"

puts beautify_name(first_name, last_name)


#============

### Let's talk about iterators

beatles = ["John", "Ringo", "George", "Yoko", "Paul"]

# the simplest iterators, .each
beatles.each do |member|
  puts "#{member} plays in the beatles"
end

# do... end is called a block
# it works *like* a method

## each_with_index

beatles.each_with_index do |member, index|
  puts "#{index + 1} - #{member}"
end

## map
# Takes an array, and returns an array of the same size

new_beatles = beatles.map do |member|
  # Value to be replaced in the array
  "#{member} is a beatle"
end

### Iterators with hashes

beatles = {
  "John" => "Singer",
  "Ringo" => "Drummer",
  "Paul" => "Bass Player",
  "George" => "Guitar Player"
}

# each for hashes
                  # key    value
beatles.each do |member, instrument|
  puts "#{member} is a #{instrument}"
end

#===========

### Mini-program: FizzBuzz

# Read about FizzBuzz: https://blog.codinghorror.com/why-cant-programmers-program/

## First Attempt

def fizzbuzz(number)
  # Pseudo-code
  # 1 - Build an array from 1 to number
  first_array = (1..number).to_a # makes an array from 1 to number
  final_array = []
  # 2 - Iterate over the array!
  first_array.each do |num|
  # 3 - Condtional
    if num % 15 == 0
     final_array << "FizzBuzz"
    elsif num % 3 == 0 # num is divible by 3
      final_array << "Fizz"
    elsif num % 5 == 0
      final_array << "Buzz"
    else
      final_array << num
    end

  end
  # 4 - Return our final array
  return final_array
end


p fizzbuzz(20)

## Code refactoring

def fizzbuzz(number)
  (1..number).map do |num|
    if num % 15 == 0
     "FizzBuzz"
    elsif num % 3 == 0 # num is divible by 3
      "Fizz"
    elsif num % 5 == 0
      "Buzz"
    else
      num
    end
  end

end

#===========

### Default Parameter

# If I pass 1 argument, rev will be false
# If I pass 2 arguments, rev will take the value of my second argument

def alphabetize(arr, rev = false)
  if rev
    arr.sort!.reverse
  else
    arr.sort!
  end
end

numbers = [5, 1, 3, 8]

# Calling alphabetize with 1 argument
# rev = false
p alphabetize(numbers)

# Calling alphabetize with 2 arguments
# rev = true
p alphabetize(numbers, true)


