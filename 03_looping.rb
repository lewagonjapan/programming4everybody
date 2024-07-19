### Looping with Ruby

# puts "Print me"
#
# puts "Print me"
# puts "Print me"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"
# puts "Print me!"

# DRY Do not Repeat Yourself

# new data type yaay
# Range
# puts (1..10).class # Range
# p (1..10).to_a
# p (1...10).to_a
#
# p ('a'..'z').to_a
# p ('A'..'Z').to_a
# p ('A'..'a').to_a # be careful

# for loop
for _ in 1..10
  puts "Print me"
end


# loop do
counter = 1 # initialize a counter

loop do
  # print my sentence to the terminal
  puts "Print me #{counter}"
  # add one to the counter
  counter += 1

  # if statement inside the loop
  # checks if the coutner if greater than 10
  if counter > 10
    break
  end
end

# times loop
10.times do
  puts "Print me"
end


# The game is right
# 1 - greet the user ok
# 2 - set a price to guess ok
# 3 - ask the user to guess a price
# 4 - keep asking the user to guess until / while the guess is right / not right
# 5 - final message when the user guesses correctly

puts 'Welcome The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

price_to_guess = rand(1..5)

puts 'Guess a price between 1 and 5'

user_guess = gets.chomp.to_i

# until user_guess == price_to_guess
#   puts "Try again"
#   print "> "
#   user_guess = gets.chomp.to_i
# end

while user_guess != price_to_guess
  puts "Try again"
  print "> "
  user_guess = gets.chomp.to_i
end

puts "Congratulation you guessed right"
puts "the price to guess was #{price_to_guess}$"


# iterators / iterables
# Array is an iterable
# range is an iterable


students = ["carl", "damien", "youssef"]

# for student in students
#   puts student
# end

# array.each do |element|
#   do something
# end

students.each do |student|
  puts "#{student} is a wonderful person!"
end


















