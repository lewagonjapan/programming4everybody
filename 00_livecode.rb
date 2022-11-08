# This file is used to livecode each part during a live session


# Q1)  ' ' or " "
# use " " only when you have to interpolate something


# Q2) How to use quotes as an actual charcter?

# puts 'I can\'t swim'
# puts "I can't swim"

# Q3) limit to how many methods you can chain?
# Your imagination 😉

# puts 53.to_s.reverse.to_i


# Q4) What is ! methods?

# 1) the ! is part of the name of the method
# 2) Those ! methods are called 'destructive' or 'dangerous'
# 3) Never use them

puts 'what is your name?'
first_name = gets.chomp

capitalized_first_name = first_name.capitalize

puts ''
puts capitalized_first_name
puts first_name