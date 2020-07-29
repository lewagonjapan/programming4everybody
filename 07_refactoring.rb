# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express. It makes the language "sweeter" for human use

# a way to make code easier to read and write
# shortcuts in Ruby

# DRY - Don't Repeat Yourself

# Conditional statements ( if / unless )

#### One-line if statement
names = ['douglas', 'sylvain', 'sasha']

'Sylvain is with us tonight!' if names.include?('sylvain')

#### One-line unless statement
movies = {
  parasite: 10,
  cats: 0
}

# if movies[:parasite] != 0
'Parasite is a great movie' unless movies[:parasite] == 0

#### Ternary operator ( if else in one line)
if names.include?('sylvain')
  'Sylvain is with us tonight!'
else
  'Sylvain is busy tonight 🤧'
end

# condition ? truthy : falsey
status = names.include?('sylvain') ? 'with us' : 'busy'

puts "Sylvain is #{status} tonight!"

# Case statements (aka switch statements)
# use it when we have a lot of elsif conditions
# compary to the equality ==
puts "Where are you from?"
country = gets.chomp # string

if country == 'japan'
  'Konnichiwa'
elsif country == 'usa'
  'Hello'
elsif country == 'france'
  'Bonjour'
elsif country == 'nepal'
  'Namaste'
else
  '👋'
end

# case what_we're_checking_equality_of
case country
when 'japan'
  'Konnichiwa'
when 'usa'
  'Hello'
when 'france'
  'Bonjour'
when 'napal'
  'Namaste'
else
  '👋'
end

# add then...

message =
case country
when 'japan' then 'Konnichiwa'
when 'usa' then 'Hello'
when 'france' then 'Bonjour'
when 'napal' then 'Namaste'
else
  '👋'
end

puts message

# Conditional assignments
# variable = value
# assign a variable *only* if the variable is not already defined

beatles = {
  singer: 'John',
  guitarist: 'Paul',
  bassist: 'George'
}

# hash[key] = value
beatles[:drummer] ||= 'Ringo'
# does the left side exist?
# if it does exist, then skip.
# if it doesn't exist, then assign the new value
beatles[:singer] ||= 'Mick'

# respond_to? # => boolean

# object.respond_to?(:method_name) # => boolean
'doug'.respond_to?(:capitalize)
# => true
[].respond_to?(:capitalize)
# => false
