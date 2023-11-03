### Controling Ruby Flow

# theory

# if condition
#   puts "this code executes if the condition is true"
# else
#   puts "this code executes if the condition is false"
# end

# expression
2 == 4 # => Equality
2 != 4 # => inequality
2 > 4 # => greater
2 >= 4 #=> greater or equal
2 < 4 #=> less
2 <= 4 # => less or equal


#### In ruby all data types are truthy / true excpet for false / nil
# if nil
#   puts "true"
# else
#   puts "false"
# end

#livecode
# Pseudo code

#Logical AND / OR
# && Logical AND -> Return true only if all the sides of the && are true
# || Logical OR -> return true if at least one of the sides is true

#program to check if a restaurant is open

# 1- Welcome the user to the program (ok)
# 2- Ask the user what time he is asking for? (ok)
# Get the user answer/input store in a variable so we can reuse it (ok)
# Compare the user asnwer to the opening hours (ok)
# Print the correct informatio

puts "Welcome to Jiro Sushi 🍣"
puts ''
puts 'What time are you inquiring about?'
print '> '

time = gets.chomp.to_i
noon = time >= 12 && time < 15
evening = time >= 19 && time < 23

if time == 11
  puts "The restaurant is opening soon"
elsif evening
  puts "The restaurant is open for dinner"
elsif noon
  puts "The restaurant is open of lunch"
else
  puts "The restaurant is closed"
end

# logical not (!)
!true == false
!false == true

# if !condition
# unless condition
#   puts "if the condition is false"
# else
#   puts "if condition is true"
# end


