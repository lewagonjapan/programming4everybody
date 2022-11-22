# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express.
# It makes the language "sweeter" for human use

names = ['doug', 'sasha', 'sylvain', 'yann', 'trouni']

# if / unless -> conditional statements (they are oppsites)
if names.include?('sylvain')
  'He is in the team!'
else
  'He is not in the team!'
end
# if or unless -> which one makes more sense?
# unless names.include?('sylvain')
#   puts 'He is not in the team!'
# else
#   puts 'He is in the team!'
# end

# if condition in one line
if names.include?('sylvain')
  'He is in the team!'
end

# rewrite into one line. more the if to the end of the line -> one condition
'He is in the team!' if names.include?('sylvain')

# writing a conditional statement in one line, with two conditions
# ternary operator
# condition ? 'truthy side' : 'falsy side'
names.include?('sylvain') ? 'He is in the team!' : 'He is not in the team!'


# Ask the user where they grew up?
# get the user's response
# greet the user in their language
puts 'Where did you grow up?'
country = gets.chomp.downcase

# one = is an assignment (age = 23)
# two == is a comparison (age == 23)

# DRY - Don't Repeat Yourself
# conditional statement -> only checking for equality

# if country == 'usa'
#   puts "Howdy 👋 🇺🇸"
# elsif country == 'ireland'
#   puts "Dia dhuit 👋 🇮🇪"
# elsif country == 'malaysia'
#   puts "Apa Khabar 👋 🇲🇾"
# elsif country == 'france'
#   puts "Bonjour 👋 🇫🇷"
# else
#   puts "👋"
# end

case country
when 'usa' then puts 'Howdy 👋 🇺🇸'
when 'ireland' then puts 'Dia dhuit 👋 🇮🇪'
when 'malaysia' then puts 'Apa Khabar 👋 🇲🇾'
when 'france' then puts 'Bonjour 👋 🇫🇷'
else
  puts '👋'
end
