### Looping with Ruby

# Repeating a set of instructions ( some block of code ) a set number of times

##### for loop
students = ["carl", "korina", "maria", "jester"]

for student in students # has to be a list of things / elements
  # puts "#{student} is attending today's session"
end

# Range ( new datatype yaaay)

# puts (0..10).class # range
# p (0..10).to_a # a range between 0 and 10 ( 10 included)
# p (0...10).to_a # a range between 0 and 10  ( 10 exluded )

# p ('a'..'z').to_a
# p ('A'..'z').to_a

for x in (0..10)
  # puts "My number is #{x}"
end

##### loop do
counter = 1
loop do
  # puts "My number is #{counter}"
  counter += 1

  if counter > 10
    break
  end
end

###### x.times
10.times do
  # puts "print me!"
end

# pseudocode
# The price right wit while loop / until loop

# 1- Greet the user to the app
# 2- Set the price to guess price_to_guess
# 3- Ask the user for a price ( user_guess) store it in a variable
# 4- Compare the price_to_guess to the user_guess
# 5- Print a final message when the user guesses correctly

# Keep repeating until the user guesses correctly

puts 'Welcome The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

price_to_guess = rand(1..5)

puts 'Guess a price between 1 and 5'

user_guess = gets.chomp.to_i

# while user_guess != price_to_guess
until user_guess == price_to_guess
  puts "try again!"
  print "> "

  user_guess = gets.chomp.to_i
end

puts ''
puts 'Congrats! You guessed the right price'
puts "The price to guess was $#{price_to_guess}"

students = ["carl", "korina", "maria", "jester"]
for student in students # has to be a list of things / elements
  # puts "#{student} is attending today's session"
end

# .each
students.each do |student|
  # puts "#{student} is attending today's session"
end

# one line .each
students.each { |student| puts "#{student} is attending today's session"}

