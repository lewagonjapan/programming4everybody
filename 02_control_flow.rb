### Controling Ruby Flow

## Be careful, = and == are noto the same!!
# = is the assignment operator
# == checks equality

puts 5 == 6 # False
puts 2 * 5 == 10 # True
puts "5" == 5 # False


#=========

## Using if / elsif / else

# Mini-program: Writing opening hours of a restaurant
# 1 - Ask user for the time, display *if* restaurant is open
# 2 - otherwise, display: restaurant is closed
# 3 - if it's 11, the restaurant opens soon
# 4 - if after 19, restaurant is open for dinner
# 5 - lunch is 12 to 14, dinner is 19 to 22
# 6 - Use || to refactor the opening hours

puts "What time is it?"
time = gets.chomp.to_i # Casting user input to Integer with .to_i

if (time > 19) && (time < 22)
  puts "Restaurant is open for dinner"
elsif time > 12 && time <= 14
  puts "The restaurant is open for lunch"
elsif time == 11
  puts "The restaurant opens soon"
else # NO CONDITION HERE - else covers every other case
  puts "The restuarant is closed"
end

# Be careful, order in if / elsif MATTERS

## Code Refactoring: More readable code

puts "What time is it?"
time = gets.chomp.to_i # 20

evening = time > 19 && time < 22
morning = time > 12 && time <= 14

if morning || evening
  puts "Restaurant is open"
elsif time == 11
  puts "The restaurant opens soon"
else # NO CONDITION
  puts "The restuarant is closed"
end

## Boolean Logic

true && true # => true
true && false # => false
false && false # => false

true || true # true
true || false # true
false || false # false

# && : true if all are true
# || : true if only one is true
