# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express. It makes the language "sweeter" for human use

# ===== REFACTORING =====


### Introduction

# Refactoring is the Marie Kondo of code 🧹

# It serves several purposes, among others:
# - Optimizing your code
# - Writing with different syntax 👈

# What's the point?
# => to make our code easier to read 🤓


# During this refactoring module, we will not learn any new programming concepts.
# However, we will learn new ways to write things we already know.


### Some New Syntaxes

# => One Line if / unless statement

# Theory: do_something if true

time = 12

opening_hours = time >= 12 && time <= 14

if opening_hours
    puts 'The restaurant is open'
end

# Can be re-written as:
puts 'The restaurant is open' if opening_hours

# CAREFUL - This doesn't work:
if opening_hours puts 'The restaurant is open' # DO NOT DO THAT

# We can also refactor with one-line unless statement:  
puts 'The restaurant is open' unless !opening_hours


# => Ternary Operator (the most important tonite)
# Theory: condition ? code_if_truthy : code_if_falsy
# Be careful: ? and : are part of the syntax

# Livecode: 
# *define a method* that takes an integer as argument, and return 'even' if that integer is even, 'odd' otherwise

def odd_or_even(number)
    
    # This:

    # if number.even?
    #     return 'the number is even'
    # else
    #     return 'the number is odd'
    # end

    # Can be refactored to this:
    return number.even? ? 'the number is even' : 'the number is odd'

end

# Calling the method
puts odd_or_even(5)
puts odd_or_even(4)



# => Case Statement

# Livecode: write a short program that welcomes the user based on their nationality


puts 'What is your nationality?'
print '> '
nationality = gets.chomp

# The old way (with if...elsif)
if nationality == 'French'
    puts 'Bonjour!'
elsif nationality == 'Japanese'
    puts 'Ohayou gozaimasu'
elsif nationality == 'German'
    puts 'Guten Tag'
elsif nationality == 'Italian'
    puts 'Ciao Bella'
else
    puts 'sorry, I cannot speak that language...'
end

# let's rewrite this with a case statement

case nationality
when 'French'   
    puts 'Bonjour!'
when 'Japanese' 
    puts 'Ohayou gozaimasu'
when 'German'   
    puts 'Guten Tag'
when 'Italian'  
    puts 'Ciao Bella'
else
    puts 'sorry, I cannot speak that language...'
end

# Let's rewrite it with when... then:

case nationality
when 'French'   then puts 'Bonjour!'
when 'Japanese' then puts 'Ohayou gozaimasu'
when 'German'   then puts 'Guten Tag'
when 'Italian'  then puts 'Ciao Bella'
else
    puts 'sorry, I cannot speak that language...'
end

# CAREFUL: case statement can only check equality



# => Conditional assignment

radiohead = {
    singer: 'Thom',
    drummer: 'Phil',
    guitarist: 'Jonny',
    bass: 'Colin'
}

radiohead[:singer] ||= 'Sylvain'
radiohead[:keyboard] ||= 'Ed'

# => In that case, the value for :singer won't be updated. However, the :keyboard key and 'Ed' values will be added



#### Implicit Return for methods
# By default, a method always returns the last statement executed
# Because of that, we can omit 'return' when we want to return the last statement

# This:
def odd_or_even(number)
    return number.even? ? 'the number is even' : 'the number is odd'
end

# Can be refactored to this:
def odd_or_even(number)
    number.even? ? 'the number is even' : 'the number is odd'
end


# Conclusion for refactoring:
# know those syntaxes in case you meet them
# if you don't use them, it's fine...