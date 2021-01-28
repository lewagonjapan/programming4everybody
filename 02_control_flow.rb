### Controling Ruby Flow

# Recap


# 1) Getting inputs from the user (from the terminal)
puts "What's your first name?"
first_name = gets.chomp

puts "Welcome #{first_name}!"

# 2) Interpolation
# It allows me to inject Ruby code in a String (see above)

# ===============

### Controlling the Flow

# Normally, code runs from top to bottom

# Theory of conditionals

if condition # when condition is true
  # then do something
elsif another_condition
  # the do something
else # any other case (NO CONDITION THERE)
  # do something else
end

# 'condition' needs to be true or false
# ⚠️ Ruby is truthy, which means everything is true except for: false, nil

# Logical Operators

# checking equality
3 == 2 # => false

# checking difference
3 != 2 # => true

# checking over / below
3 > 2 # => true
3 < 2 # => false
1.5 >= 1 # => true
1.5 <= 1 # => false

# 'and' and 'or' logical operators
true && false # => false
true || false # => true

# ! operator (means 'not')
!true # => false

# We can assign logical statements to variables
age = 20
old = age > 18 # the value 'true' is assigned to the variable 'old'

# ===============

### Livecode: Restaurant opening hours

# 0) Ask user for time
# 1) Restaurant is open after noon
# 2) Restaurant opens soon (when it's 11)
# 3) Restaurant opens for lunch / dinner (after 7)
# 4) Add exact opening time for lunch and dinner

# Before refactoring

puts 'Hey! What time is it?'
print '> '
time = gets.chomp.to_i

if (time >= 19) && (time <= 23)
  puts 'Restaurant is open for dinner!'
elsif (time >= 12) && (time <= 14)
  puts 'Restaurant is open for lunch!'
elsif time == 11
  puts 'Restaurant opens soon'
else
  puts 'Sorry, restaurant is closed...'
end

# After refactoring

puts 'Hey! What time is it?'
print '> '
time = gets.chomp.to_i

dinner_time = (time >= 19) && (time <= 23) # will return True or False
lunch_time = (time >= 12) && (time <= 14) # will return True or False

if dinner_time
  puts 'Restaurant is open for dinner!'
elsif lunch_time
  puts 'Restaurant is open for lunch!'
elsif time == 11
  puts 'Restaurant opens soon'
else
  puts 'Sorry, restaurant is closed...'
end

# ===============

## Boolean Logic: Logic with && and ||

# With &&, return true if everything is true
true && true && false # => false

# With ||, returns true if AT LEAST ONE is true
true || true || false # => true

# ⚠️ && takes precedent over ||
