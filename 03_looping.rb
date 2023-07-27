### Looping with Ruby

# Allows a set on instruction or code to be executed *repeatedly*
# based on a certain condition

# iteration is 1 cycle of the loop


# New data type
# Range

(1..10).to_a # a range from 1 to 10
p (1...10).to_a # a range from from 1 to 9 (10 excluded)
p ('a'..'z').to_a # A range from a to z


# For loop

for number in (1..10)
  puts "My number is #{number}"
end

# loop do
counter = 0

loop do
  puts 'I love coding!'
  counter = counter + 1
  if counter == 10
    break # keyword to break out of a loop
  end
end

# .times loop

10.times do
  puts "I love Coding"
end

# live code
# Pseudo code

# 1. Greet the user
# 2. set a price for product
# 3. ask the user to guess a price
# 4. keep asking the user to guess while / until they guess right
# 5. final message when they guess correctly

# 1. Greet the user
puts 'Welcome The Price is Right!! 🤑🤑🤑'
puts '========'
puts ''

# 2. set a price for product
price_to_guess = rand(1..10)

user_guess = 0
message = 'Guess a price between 1 and 10'

# 3. ask the user to guess a price
# keep asking the user to guess while / until they guess right
until price_to_guess == user_guess
  puts message
  message = 'try again!'
  user_guess = gets.chomp.to_i
end

# 5. final message when they guess correctly
puts ""
puts "Congratz you guessed it right."



# array = ["soufiane", "Ike", "Eli"]

for number in array
  puts "My number is #{number}"
end

# iterators
array.each do |n|
  puts "My name is #{n}."
end

array.each { |number| puts "My number is #{number}" }

array.each_with_index do |number, index|
  puts "#{index + 1}. My number is #{number}"
end

# [1, 2, 3]
# ["str1", "str2"]
# [1, "str2", true, 0]
# array = [[1, 2, 3], ["str1", "str2"], [true], 4]
