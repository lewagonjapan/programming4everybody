# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express. It makes the language "sweeter" for human use


# ==== REFACTORING ====

# What is refactoring?
# Absolutely no new concept, it's just going to be new syntax

# Question: Which way is better?
# the way that is the most READABLE

# Two main ways to refactor:
# 1) Writing with a different syntax
# 2) Optimizing your code

# Syntax Sugar
# Making your code sweeter
# Happiness for developers, having a shorter syntax for things that we write a lot


##### One-line if statement

time = 13
lunch_time = time >= 12 && time < 15

if lunch_time
    puts 'Restaurant is open for lunch!'
end

# Can be refactored in a one line statement
# do_something if condition
puts 'Restaurant is open for lunch!' if lunch_time


##### One line unless statement
puts 'Restaurant is open for lunch!' unless !lunch_time


#### Ternary operator
# theory: condition ? code_if_truthy : code_if_falsy

# Define a method that takes a number as parameter, and returns 'odd' or 'even'

def odd_or_even(number)
    # if number.even?
    #     return 'even'
    # else
    #     return 'odd'
    # end
    return number.even? ? 'even' : 'odd'
end

puts odd_or_even(5)
puts odd_or_even(4)


#### case statement
# Write a short program that greets the user based on their nationality

puts 'What is your nationality?'
nationality = gets.chomp

if nationality == 'French'
    puts 'Bonjour!'
elsif nationality == 'German'
    puts 'Guten Tag!'
elsif nationality == 'Italian'
    puts 'Ciao Bella!'
elsif nationality == 'Japanese'
    puts 'Konnichiwa'
else 
    puts 'Sorry, I cannot speak that language 🤷‍♀️'
end

# Can be refactored using a case statement

case nationality
when 'French'
    puts 'Bonjour!'
when 'German'
    puts 'Guten Tag'
when 'Italian'
    puts 'Ciao Bella'
when 'Japanese'
    puts 'Konnichiwa'
else 
    puts 'I cannot speak that language...'
end

# Can be refactored, using *then*

case nationality
when 'French'   then puts 'Bonjour!'
when 'German'   then puts 'Guten Tag'
when 'Italian'  then puts 'Ciao Bella'
when 'Japanese' then puts 'Konnichiwa'
else 
    puts 'I cannot speak that language...'
end

# Very readable code now!

#### Conditional Assignment

# most common use case is with hashes

radiohead = {
    singer: 'Thom',
    drummer: 'Phil',
    lead: 'Jonny',
    bass: 'Colin'
}
# p radiohead

radiohead[:singer] ||= 'Sylvain' # Key already exists, so it doesn't update the value
radiohead[:rhythm] ||= 'Ed' # Key doesn't exist, so it creates a new key / value pair

# p radiohead

##### Implicit return

def odd_or_even(number)
    number.even? ? 'even' : 'odd'
end

# By construction, a method always returns the last statement executed
puts odd_or_even(5)

# As a *best practice*, make sure you add a *return* when what the method returns is not obvious

