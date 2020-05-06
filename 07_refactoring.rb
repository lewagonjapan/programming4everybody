# Syntax Sugar
# syntactic sugar is syntax within a programming language that is designed to make things easier to read or to express. It makes the language "sweeter" for human use

# DRY - Don't Repeat Yourself

# *One-line conditions*
# use them *only* when you have one condition (and no `elsif` or `else`)

# 1. One-line if statement

names = ["doug", "sylvain", "sasha"]

if names.include?("sylvain")
  puts "sylvain is with us today!"
end
# will become
puts "sylvain is with us today!" if names.include?("sylvain")

# 2. One-line unless statement

movies = {
  parasite: 10,
  cats: 0
}

unless movies[:parasite] != 10
  puts "Parasite is a top movie!"
end
# will become
puts "Parasite is a top movie!" unless movies[:parasite] != 10

##################

# *Ternary operator* (one line if-else statement)
# also here use it *only* when you have one if and one else condition!

names = ["doug", "sylvain", "sasha"]

if names.include?("sylvain")
  puts "sylvain is with us today!"
else
  puts "sylvain is always too busy :("
end
# will become
puts names.include?("sylvain") ? "sylvain is with us today!" : "sylvain is too busy :("

###################

# *Case statement* (a.k.a switch statement)
# use it when you have a lot of elsif conditions!

puts "Where are you from?"
country = gets.chomp

if country == "Japan"
  puts "Konnichiwa!"
elsif country == "USA"
  puts "Hello!"
elsif country == "France"
  puts "Bonjour!"
else
  puts "👋"
end
# will become
case country
when "Japan"
  puts "Konnichiwa!"
when "USA"
  puts "Hello!"
when "France"
  puts "Bonjour!"
else
  puts "👋"
end
# or, even shorter:
case country
when "Japan" then puts "Konnichiwa!"
when "USA" then puts "Hello!"
when "France" then puts "Bonjour!"
else
  puts "👋"
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



