# Control Flow in Ruby
# ------------------------------------------------
# Sections:
#  - if / elsif / else
#  - unless
#  - comparisons
#  - logical operators (||, &&, !)
#  - short examples (uncomment to run)

# --------------------
# Basic if / elsif / else
# --------------------
# Runs the first branch whose condition is true.
age = 20

if age >= 18
  puts "You are old enough to vote!"
else
  puts "You are not old enough to vote."
end

# --------------------
# unless
# --------------------
# The inverse of if: runs when condition is false.
# Equivalent: unless cond ... end  <=>  if !cond ... end
unless age < 18
  # puts "Using unless: you are an adult."
end

# --------------------
# Comparison operators (return boolean)
# --------------------
#  >   greater than
#  <   less than
# >=   greater than or equal
# <=   less than or equal
# ==   equal
# !=   not equal # Do not confuse with = (assignment)
#
# Examples:
# puts (age > 18)   # true/false
# puts (age == 20)  # true

# --------------------
# Logical operators
# --------------------
# ||  OR  (true if at least one operand is true)
# &&  AND (true only if all operands are true)
# !   NOT (negates boolean)
#
# Examples:
# puts (age > 17 || age < 10) # Expression is true if AT LEST ONE condition is true
# puts (age > 17 && age < 30) # Expression is true only if ALL conditions are true
# puts !(age == 19)

# --------------------
# Small interactive example (restaurant hours)
# --------------------
# pseudo code:
# 1. Greet user
# 2. Ask for hour (0-23)
# 3. Check hour against restaurant hours:
#    - Lunch: 12-15
#    - Dinner: 19-22
#    - Opening soon: 11
#    - Closed: all other times


puts "Welcome to Jiro Sushi 🍣"
print "What hour are you inquiring about? (0-23): "
hour = gets.chomp.to_i

if hour == 11
  puts "The restaurant is opening soon!"
elsif hour >= 19 && hour < 23
  puts "The restaurant is open for dinner!"
elsif hour >= 12 && hour < 16
  puts "The restaurant is open for lunch!"
else
  puts "The restaurant is closed!"
end
