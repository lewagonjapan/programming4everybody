### Looping with Ruby

# 😲 Looping is what makes computers powerful!!


## One more Data Type: Range
(1..10).class # => Range


## Three 'not much used in Ruby' loop syntax

# 1) 'for' loop

# 'for' loop with a range

for num in 1..10
  puts num
end

# 'for' loop with arrays

names = ['Sasha', 'Douglas', 'Sylvain']

for name in names
  puts "#{name} works at Le Wagon!"
end

# ⚠️ NOW YOU CAN FORGET ABOUT 'FOR' LOOPS (in Ruby)

# 💡 Emoji box: ctrl + cmd + space (for Mac users)


# 2) the 'loop do' loop

i = 0
loop do
  puts 'Ruby is awesome'
  i += 1
  break if i == 10 # condition to break the loop
end

# ⚠️ will be an infinite loop if not break condition stated


# 3) the '.times' loop

10.times do
  puts 'I ♥️  Ruby!'
end

# For example, used when seeding an application

# =============

# Now, more often used loops: while / until

# Livecode: The price is right!!

# Ask user for a 'price' until he finds the right one!

# Pseudo-Code
# 1) Specifying the price to guess
# 2) Ask user for their guess
# 3) Store the user answer in a variable
# 4) Looping *until* user gets the right answer


price_to_guess = rand(1..10) # Random integer from 1 to 10

# while user_answer != price_to_guess
user_answer = 0 # Initializing the variable

until user_answer == price_to_guess
  puts 'Guess a price between 1 and 10 usd:'
  print '> '
  user_answer = gets.chomp.to_i
end

puts "You won! the correct price was #{price_to_guess}"



# The Ruby way of looping (iterating) over arrays: .each
# (this is the reason why we do not use 'for' loops in Ruby)

names = ['Sasha', 'Douglas', 'Sylvain']

names.each do |name|
  puts "#{name} works at Le Wagon!"
end

# .each is called an iterator
# more on this in the next live session!!! 🚀



# ================

## Q&A

# Q1 - What is that user_answer = 0

# See above livecode: it is used to initialize the user_answer variable
 user_answer == price_to_guess # This line will return an error if user_answer is not initialized


# Q2 what is .to_i ?

.to_i # is a String method, it turns a String into an Integer

'5'.to_i # => 5 as an Integer
'sylvain'.to_i # => 0 as an Integer


# Q3 - Is escaping characters 'discouraged'?

# Escaping characters: \
'what\'s your name' # We are 'escaping' the ' character, i.e. telling Ruby to ignore that we are closing the String


# Q4 - Single vs Double quotes?

'single quotes' # => Use it for 'simple' strings

this = 'interpolation'
"double quotes, use it for #{this}" # => For interpolation


# Q5 - How did we get to the last message in the 'Price is Right'?

# Once the 'until...end' loop finishes, we move to the next line ⬇️

puts "You guess correctly!!"


# Q6 - what is that ! notation

# ⚠️ These two things are different:

! # => means 'not'
.capitalize! # => ! in method name is PART OF THE METHOD NAME

# ! methods are called dangerous or destructive.
# ⚠️ THEY MODIFY THE ORIGINAL VARIABLE
# be careful with ! methods

# "Choose wisely 🍷"



