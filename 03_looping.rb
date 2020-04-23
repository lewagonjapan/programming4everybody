#1.	WHILE LOOP

number = 1

while number < 11
  puts number
  number = number + 1
end

=begin

Real world example: music player loop

while user does not press stop
   get the next song
   play that song
end

=end



#2.	UNTIL LOOP

number = 1

until number == 11
  puts number
  number = number + 1
end

=begin

Real world example: music player loop

until user presses stop
   get the next song
   play that song
end

=end


#3.	FOR LOOP

for num in 1...10
  puts num
end

puts "--------------"

for num in 1..10
  puts num
end

=begin

Real world example: music player loop

for songs 1..7
   play song
end

=end


#4.	NEXT

for number in 1..5
  next if number % 2 == 0
  puts number
end

=begin

Real world example: music player loop

for songs 1..10
   next if song is more than 5 minutes long
end

=end

#5.	LOOP METHOD

puts "Simple loop - an infinite loop!"

number = 0

loop do
  number += 1
  puts number
end


puts "Controlling the loop execution"

number = 0

loop do
  number += 1
  puts number
  break if number == 5
end

# Real world example: music player loop

# loop do
  #play songs on playlist
  # stop playing (break!) when you reach song #7
# end


6.	EACH METHOD

number.each do |x|
  puts "Displaying number: #{x}"
end

#ANOTHER SYNTAX FOR THIS:

number.each { |x|
  puts "Displaying number: #{x}"
 }

=begin

Real world example: posts on a blog

posts.each do |post|
   display title + first paragraph
end

=end


#7.	TIMES METHOD

3.times do
  puts "You've scored!"
end

puts "----------"



#SAME AS

counter = 0

loop do
  counter +=1
  puts "Testing loop do"
  break if counter == 3
end

puts "----------"

#SAME AS

counter = 0

while counter <= 2
  counter +=1
  puts "Testing while loop"
end

puts "----------"

# SAME AS

counter = 0

until counter == 3
  counter = counter + 1
  puts "Testing until counter"
end

puts "----------"

# SAME AS

for num in 1..3
  puts "Testing for loop"
end
