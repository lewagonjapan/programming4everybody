# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express. It makes the language "sweeter" for human use

# If Conditions

names = ['doug', 'sasha', 'sylvain', 'yann', 'trouni']

if names.include?('sylvain')
  "He is in the team!"
else
  "He isn't in the team!"
end

# if and unless are just opposites

# shorter way (one line) at the end of your line
# do something if condition
'He is in the team!' if names.include?('sylvain') # there is no end for a one-liner
# puts "He isn't in the team!" unless names.include?('sylvain')

# ternary operator (2 possible scenarios)
# condition ? what happens when truthy : what happens when falsey
names.include?('sylvain') ? 'He is in the team!' : 'He is not in the team!'

# only checking for equality

# ask the user where they are from
# store the user's country
# i will greet the in their language

# DRY - Don't Repeat Yourself

puts 'Where did you grow up?'
country = gets.chomp.downcase

# if country == 'japan'
#   puts "Konnichiwa 🇯🇵 👋"
# elsif country == 'usa'
#   puts "Howdy 🇺🇸 👋"
# elsif country == 'denmark'
#   puts 'Hej 🇩🇰 👋'
# elsif country == 'mexico'
#   puts 'Hola 🇲🇽 👋'
# else
#   puts '👋'
# end

# case statement
# it's just an if statement but only when we check for equality (==)
# case thing_we_are_check_equality_for
case country
when 'japan' then puts "Konnichiwa 🇯🇵 👋"
when 'usa' then puts "Howdy 🇺🇸 👋"
when 'denmark' then puts 'Hej 🇩🇰 👋'
when 'mexico' then puts 'Hola 🇲🇽 👋'
else
  puts '👋'
end
