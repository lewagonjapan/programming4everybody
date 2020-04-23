=begin
----------------
IF
----------------
=end


if 20 < 30
  puts "That's true!!"
end password = "Good morning"

puts "Enter your password"

answer = gets.chomp

if answer == password
    puts "You're logged in"
end


=begin
----------------
ELSE
----------------
=end

if 20 > 30
  puts "That's true!"
else
  puts "That's not true!"
end password = "Good morning"

puts "Enter your password"

answer = gets.chomp

if answer == password
    puts "You're logged in"
else
   puts "Wrong password"
end


=begin
----------------
ELSIF
----------------
=end

time = 13

if time < 12
  puts "It’s  before noon"
elsif time  > 12
  puts "It’s past noon"
else
  puts "It’s noon!"
end



=begin
----------------
UNLESS
----------------
=end


password = "Hello"

puts "Please insert password"

answer = gets.chomp

unless answer == password
  puts "Wrong password!"
else
  puts "You're logged in!"
end


=begin
----------------
RELATIONAL OPERATORS
----------------
=end

n_1 = 16

n_2 = 20

puts n_1 <= n_2



=begin
----------------
BOELEAN OPERATORS
----------------
=end



# AND

puts "STRICT LOGIN SYSTEM - LOGS YOU IN ONLY IF BOTH THE PASSWORD AND THE USERNAME ARE CORRECT"

username = "John"

password = "Hello"

puts "Enter your username"

answer_1 = gets.chomp

puts "Enter your password"

answer_2 = gets.chomp

if answer_1 == username && answer_2 == password
  puts "You're logged in!"
else
  puts "Wrong credentials!"
end



# OR

puts "CHILLED LOGIN SYSTEM - LOGS YOU IN IF EITHER THE USERNAME OR THE PASSWORD ARE CORRECT"

username = "John"

password = "Hello"


puts "Enter your username"

answer_1 = gets.chomp

puts "Enter your password"

answer_2 = gets.chomp

if answer_1 == username || answer_2 == password
  puts "You're logged in!"
else
  puts "Wrong credentials"
end
