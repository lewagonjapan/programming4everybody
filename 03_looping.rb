### Looping with Ruby
# puts "Print me!"

# puts "Print me for the boss!"
# puts "Print me for the boss!"
# puts "Print me for the boss!"
# puts "Print me for the boss!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"

# DRY
# Do not Repeat Yourself
#
# looping
# Repeating a piece of code a set number of times

# New Datatype Range
# represents values within a certain range ( sequencial )
puts (1..10).class
p (1..10).to_a # bertween 1 an 10 inlusive (the 10)
p (1...10).to_a # between 1 and 10 exclusive (the 10)

p ('A'..'z').to_a # Look for the ASCII table
p ('A'..'Z').to_a

# for loop
#
for n in 1..10
  puts n
end
#
students = ["camila", "leanardo", "giada", "matt"]

for student in students
  puts "#{student} is a great student!"
end

# loop do
counter = 1
loop do
  puts counter # 10
  counter += 1

  if counter > 10
    break
  end
end

# x.times do
10.times do
  puts "I love coding!"
end

# live code
# 1- Greet the user to our application ok
# 2- Set the price to guess
# 3- Ask the user to guess the price
# 4- Compare the user's guess with the price to guess
#
# 5- keep asking until the user guesses right
# 6- Congratulate the user

puts 'Welcome The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

price_to_guess = rand(1..10)

puts "Guess a price between 1 and 10"

users_guess = gets.chomp.to_i # 1

until users_guess == price_to_guess
  puts "Try again!"
  print "> "
  users_guess = gets.chomp.to_i
end

puts "You guessed it right!"
puts "The price to guess was #{price_to_guess}"

# while true
#   puts "print line"
# end


# iterators / iterable
# iterable => Is a datatype I can iterate over ( loop over )
# iterator => A tool provided by ruby to iterate over lists ( iterables )

students = ["camila", "leanardo", "giada", "matt"]
#.each

# for student in students
#   puts student
# end

# multiline syntax
p students.each do |student|
  puts "#{student} is a great student!"
end

# single liner (single line syntax)
students.each { |student| puts "#{student} says hello to you!" }
































