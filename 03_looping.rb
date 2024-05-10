### Looping with Ruby
# This file is used to livecode each part during a live session
# puts "Print me!"

# Range: New data type
(1..5) # sequence of numbers between 1 an 5 => 1 2 3 4 5 (5 is included)
(1...5) # sequence of numbers bet ween 1 and 5 ( 5 is excluded)

p (1..5).to_a
p (1...5).to_a
p ("a"..'g').to_a

# for loop
for a in (1..5)
  puts "My number is #{a}"
end

# loop do
count = 1

loop do
  puts "My number is #{count}"
  count = count + 1

  if count > 5
    break
  end
end

# Pseudocode
# Price is right to illustrate a while loop

# Greet the user
# set a price for the product
# ask the user to guess a price
# store the user input into a variable
# check is they guessed right
# Keep asking until they get right

puts 'Welcome The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

price_to_guess = rand(1..10)

puts "Guess a price between 1 and 10!"
print ">"

users_guess = gets.chomp.to_i

while price_to_guess != users_guess # did the user guess right
  puts "Wrong Try again"
  print ">"
  users_guess = gets.chomp.to_i
end

puts "You guessed right the price was #{price_to_guess}"

# unless <=> while ( loop )
# if <=> until (loop)

# Iterables
# Array is an iterable
# Range is an iterable

students = ["Ali", "Jon", "Naomi", "Shin"]

# for student in students
#   puts "#{student} is attending the session today"
# end

# array methods
# iterator .each
# array.each do |element|
  # repeat this
# end

students.each do |student|
  puts "#{student} is attending the session today"
end

students.each { |student| puts "#{student} is attending the session today" } # one line version of .each