# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express. It makes the language "sweeter" for human use

# DRY - Don't Repeat Yourself

# Conditonal Statements
# if condition
# else
# end

names = ['doug', 'sasha', 'sylvain']

###################
# in-line conditional statement

# if names.include?('sasha')
#   puts 'Sasha is with us!'
# end

'Sasha is with us!' if names.include?('sasha')

'Sasha is not here!' unless names.include?('sasha')

###################

# ternary operator // condition is short enough
# condition ? truthy : falsy

names.include?('Sasha') ? 'Sasha is with us' : 'Sasha is too busy'

###################

# Case statement // conditional
# comparing equality

puts 'Where are you from?'
country = gets.chomp

# if country == 'Japan'
#   puts 'Konnichiwa 🇯🇵 👋'
# elsif country == 'USA'
#   puts 'Howdy 🇺🇸 👋'
# elsif country == 'France'
#   puts 'Bonjour 🇫🇷 👋'
# else
#   puts '👋'
# end

# case what_we_are_comparing
# when other_thing

case country
when 'Japan' then puts 'Konnichiwa 🇯🇵 👋'
when 'USA' then puts 'Howdy 🇺🇸 👋'
when 'France' then puts 'Bonjour 🇫🇷 👋'
else
  puts '👋'
end

#################

# *Conditional assignment*
# you assign a variable *only* if the variable is not already defined

beatles = {
  singer: "John",
  guitarist: "Paul",
  bassist: "George"
}

beatles[:singer] ||= "Mick" # will not be assigned here! The singer already exists
beatles[:drummer] ||= "Ringo" # it will assign it here, because the drummer doesn't exist yet!

beatles.each do |role, name|
  puts "#{name} is the #{role}"
end


#######################

# *Other methods*

# `respond_to?`
# use it to check if a method can be applied on a specific element (not very common, just test the method manually!)
[1, 2, 3].respond_to?(:push) # => true, I can apply `push` on an array
[1, 2, 3].respond_to?(:to_sym) # => false, `to_sym` can't be applied on an array
"hello".respond_to?(:reverse) # => true
"hello".respond_to?(:delete_at) # => false

#
