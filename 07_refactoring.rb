# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express. It makes the language "sweeter" for human use

# DRY - Don't Repeat Yourself

# Conditonal Statements
# if age > 20
#   # do something
# elsif age < 18
# else
#   # do something
# end
names = ['doug', 'slvain', 'sasha']
###################
# in-line conditional statement

"Sasha is with us!" if names.include?('sasha')

"Sasha is not here!" unless names.include?('sasha')

###################

# ternary operator // condition is short enough
# condition ? truthy : falsy

# if names.include?('sasha')
#   # do one thing
#   # do second
#   puts 'Sasha is with us!'
# else
#   puts 'Sasha is not here!'
# end

names.include?('sasha') ? 'Sasha is with us!' : 'Sasha is not here!'

###################

# Case statement // conditional
# comparing equality

puts 'Where are you from?'
country = gets.chomp.downcase # always gives me a string

# if country == 'usa'
#   puts 'Howdy 🇺🇸 👋'
# elsif country == 'japan'
#   puts 'Konnichiwa 🇯🇵 👋'
# elsif country == 'france'
#   puts 'Bonjour 🇫🇷 👋'
# else
#   puts '👋'
# end

case country
when 'usa' then puts 'Howdy 🇺🇸 👋'
when 'japan' then puts 'Konnichiwa 🇯🇵 👋'
when 'france' then puts 'Bonjour 🇫🇷 👋'
else
  puts '👋'
end

#################

# *Conditional assignment*
# you assign a variable *only* if the variable is not already defined

beatles = {
  singer: 'John',
  guitarist: 'Paul',
  bassist: 'George'
}

beatles[:singer] ||= 'Mick'
beatles[:drummer] ||= 'Ringo'

beatles.each do |role, name|
  puts "#{name} is the #{role} in the Beatles"
end

#######################
