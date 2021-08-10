# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express. It makes the language "sweeter" for human use

# DRY - Don't Repeat Yourself

# Multi-line Condition
# if condition
#   # do something
# elsif condition
#   # do something else
# else
#   # do the default behavior
# end

names = ['doug', 'sylvain', 'sasha', 'yann', 'trouni']

# long way
if names.include?('sylvain')
  "He's in the team!"
end

# shorter way (one-line)
"He's in the team!" if names.include?('sylvain')
"He's not in the team!" unless names.include?('sylvain')

# one condition, but two outputs (ternary)

if names.include?('sylvain')
  "He's in the team!"
else
  "He's not in the team!"
end

# condition ? truthy : falsey

names.include?('sylvain') ? "He's in the team!" : "He's not in the team!"

# write a conditional when checking equality (case statement)
# ask user what country they're from
# store that input
# then i'll greet them with their language

# puts 'Where are you from?'
# country = gets.chomp.downcase

# if country == 'japan'
#   puts 'Konnichiwa 🇯🇵 👋'
# elsif country == 'usa'
#   puts 'Howdy 🇺🇸 👋'
# elsif country == 'france'
#   puts 'Bonjour 🇫🇷 👋'
# else
#   puts '👋'
# end

# Can't use a case for > or <, only ==
# age > 20

# case country
# when 'japan' then puts 'Konnichiwa 🇯🇵 👋'
# when 'usa' then puts 'Howdy 🇺🇸 👋'
# when 'france' then puts 'Bonjour 🇫🇷 👋'
# else
#   puts '👋'
# end
# case thing_youre_comparing
# when check_for_equality
# end

# Conditional Assignments
beatles = {
  singer: 'John',
  guitarist: 'Paul',
  bassist: 'George'
}

# ||= for conditional assignments

# puts hash_name[key]
# puts beatles[:singer]
# puts beatles[:bassist]
# if it doesn't exist, it will assign
beatles[:singer] ||= 'Mick'
beatles[:drummer] ||= 'Ringo'

if beatles.key?('drummer')
  # do nothing
else
  beatles[:drummer] = 'Ringo'
end

beatles[:drummer] = 'Ringo' unless beatles.key?('drummer')
beatles[:drummer] = 'Ringo' if !beatles.key?('drummer')

# don't use this
# beatles[:drummer] ? 'do_nothing' : beatles[:drummer] = 'Ringo'

p beatles





