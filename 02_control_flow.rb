### Controling Ruby Flow

## Third programming concept: Conditionals

# Livecode
# Coding a mini-program that will give us opening hours of a restaurant
# Pseudo Code:
# Ask the user for the time
# Store user's answer in a variable
# If it's after 12, tell the user that restaurant is open

puts 'Hello! What time is it right now?'
print '> '
time = gets.chomp.to_i # Integer


# Original code 👇

if (time >= 19) && (time <= 22)
  puts 'The restaurant is open for dinner!'
elsif (time >= 12) && (time <= 14)
  puts 'The restaurant is open for lunch!'
elsif time == 11 # DOUBLE EQUAL
  puts 'Restaurant opens soon!'
else # No condition here: any other case
  puts 'Sorry! The restaurant is closed.'
end


# Refactored code 👇

evening = (time >= 19) && (time <= 22)
noon = (time >= 12) && (time <= 14)

if noon || evening
  puts 'The restaurant is open!'
elsif time == 11 # DOUBLE EQUAL
  puts 'Restaurant opens soon!'
else # No condition here: any other case
  puts 'Sorry! The restaurant is closed.'
end

# Opposite of == is != (different from)

# =======================
## Boolean logic

# &&: returns true if all conditions are true

true && true # => true
true && false # => false
false && false # => false

# ||: return true if at least one is true

true || true # => true
true || false # => true
false || false # => false



