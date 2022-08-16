# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express.
# It makes the language "sweeter" for human use

# If conditions

names = ['doug', 'sylvain', 'sasha', 'yann', 'trouni']

# Normal if condition
# if condition
#   some code
# elsif another_condition
#   some code
# else
#   some code for the catch all
# end

# all methods in Ruby that end in a ? -> returns a boolean
# if names.include?('sylvain')
#   puts "He is in the team!"
# else
#   puts "He is not in the team!"
# end

# unless statement -> the opposite of if
# unless names.include?('sylvain')
#   puts "He is not in the team!"
# else
#   puts "He is in the team!"
# end

# one line conditions
# code to execute if one_condition
# puts "He is in the team!" if names.include?('sylvain')
# puts "He is not in the team!" unless names.include?('sylvain')

# ternary operator (two sides)
# condition ? truth_side : falsey_side
# puts names.include?('Sylvain') ? "He is in the team!" : "He is not in the team!"

# checking equality

# ask the user for their country
# get the user's response
# say hello to that person in their language

# DRY - Dont Repoeat Yourself
puts 'Where did you grow up?'
country = gets.chomp.downcase

# if country == 'usa'
#   puts "Howdy 👋 🇺🇸"
# elsif country == 'france'
#   puts "Bonjour 👋 🇫🇷"
# elsif country == 'portugal'
#   puts "Bom Dia 👋 🇵🇹"
# elsif country == 'england'
#   puts "Alight mate 👋 🏴󠁧󠁢󠁥󠁮󠁧󠁿"
# else
#   puts "👋"
# end

# rubocop -> check your style

case country
when 'usa' then puts "Howdy 👋 🇺🇸"
when 'france' then puts "Bonjour 👋 🇫🇷"
when 'portugal' then puts "Bom Dia 👋 🇵🇹"
when 'england' then puts "Alight mate 👋 🏴󠁧󠁢󠁥󠁮󠁧󠁿"
else
  puts '👋'
end

# case statement -> check equality (==)
# case thing_we_are_checking
# when 'comparison'
#   some_code
# else
#   some_code
# end
