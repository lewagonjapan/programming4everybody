# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express.
# It makes the language "sweeter" for human use

# DRY - Don't Repeat Yourself

names = ['doug', 'sylvain', 'sasha', 'yann']

# if condition
  # do some things
# elsif condition
  # do some things
# else
  # do this instead
# end

# in-line conditional statement (one output)

# long way
if names.include?('sylvain')
  "He's with the team"
end

# short way
"He's with the team" if names.include?('sylvain')

# ternary operator (two outputs) // one line (no if keyword) // when it's short

# condition ? truthy : falsey
names.include?('sylvain') ? "He's with the team" : "He's not in the team"

# case statement // conditional
# comparing equality

# puts 'Where are you from?'
# country = gets.chomp.downcase

# if country == 'japan'
#   puts 'Konnichiwa 🇯🇵 👋'
# elsif country == 'usa'
#   puts 'Howdy yall 🇺🇸 👋'
# elsif country == 'france'
#   puts 'Bonjour 🇫🇷 👋'
# else
#   puts '👋'
# end

# case the_thing_youre_checking_equality
# when the_thing_youre_comparing_it_to
# case country
# when 'japan' then puts 'Konnichiwa 🇯🇵 👋'
# when 'usa' then puts 'Howdy yall 🇺🇸 👋'
# when 'france' then puts 'Bonjour 🇫🇷 👋'
# else
#   puts '👋'
# end

# # Conditional Assignment
# assign a variable *only* if the variable hasn't been defined yet

beatles = {
  singer: 'John',
  guitarist: 'Paul',
  bassist: 'George'
}
# CRUD Hash
# hash[key]
# hash[key] = new_value
beatles[:singer] ||= 'Mick'
beatles[:drummer] ||= 'Ringo'

# unless beatles.key?(:drummer)
#   beatles[:drummer] = 'Ringo'
# end












