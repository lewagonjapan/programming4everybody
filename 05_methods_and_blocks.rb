
### Methods

#### Methods

### THEORY
# variable is a way to store VALUES and we can resuse them later
# METHOD is a way to store BLOCKS OF CODE, so we can reuse them later.

# def method_name(parameters)
#   BLOCK OF CODE
#   return
# end

# parameters are optional
# !!!!!method you want to return something

f_name = 'donALd'
l_name = 'CHow'

# 'Donald Chow'

def beautiful_name(first_name, last_name) # parameters
  cap_fname = first_name.capitalize
  cap_lname = last_name.capitalize

  full_name = cap_fname + ' ' + cap_lname
  # return full_name

  # always return you the last line of code
  full_name
end

# call the method by using its name
p beautiful_name('andrew', 'beckett')
p beautiful_name(f_name, l_name) # arguments

# destructive method
# convention is to have an '!'

# boolean method
# methods that return true or false should end with a ?

def start_with_s?(string)
  string.downcase[0] == 's'
end

p start_with_s?('andrew')
p start_with_s?('Sergio')

# ==========================
### LIVE CODE

# create a method
# take in an argument
# argument is going to be the birthday
# return you the lucky number

# create a method to check if the digits length

# 1. calculate the day
# 1.1 check if the day has more than 1 digit
# 1.2 if the day has more than 1 digit , add them together

# 2. SAME FOR MONTH AND YEAR
# 2.1 we can reuse the code from part 1!!!!!!

# create another method that #sum_digits

# 3. add day month year together
# 3.1 check if the day has more than 1 digit
# 3.2 if the day has more than 1 digit , add them together

# Step 0 - way to check a digit's length

def num_length(number)
  number.digits.length
end
# Step 1, 2 - if variable has more than 1 digits, add the digits together

def sum_digits(number)
  number = number.digits.sum until num_length(number) == 1
  number
end
# step 3 - creating the lucky number

def lucky_number(birthday)
  sum_digits(birthday.sum { |num| sum_digits(num) })
end

# Welcome the user
puts 'Lets find your lucky number'
puts '================='
puts ''

puts 'what is your birth day'
day = gets.chomp.to_i
puts 'what is your birth month'
month = gets.chomp.to_i
puts 'what is your birth year'
year = gets.chomp.to_i

birthday = [day, month, year]

puts "your lucky number is #{lucky_number(birthday)}"
