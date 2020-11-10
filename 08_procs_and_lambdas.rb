# *Blocks recap*
# block -> inside of the do...end
names = ['doug', 'sasha', 'sylvain']

names.each do |name|
  name.capitalize
end
# returns the original array

# both of these the same thing
# names.each { |name| puts name.capitalize }

# .map == .collect
capitalized = names.map do |name|
  name.capitalize
end
# returns a newly built arrray
names # original
capitalized # newly built

# *** Yield ***
# calls the block that's given the argument
# acts as an anonymous method

def welcome_message(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  # "Howdy #{full_name}!"
  yield(full_name) # calls the block!
end

welcome_message('doug', 'berkley') do |full_name|
  "Howdy #{full_name} 🇺🇸 👋"
end

welcome_message('sylvain', 'pierre') do |full_name|
  "Bonjour #{full_name} 🇫🇷 👋"
end

# * Proc *
# a way to store a block in a variable

hello = Proc.new do
  puts "I'm inside the new Proc"
  puts "It's a block of code"
end

hello = lambda do
  puts "I'm inside the new Proc"
  puts "It's a block of code"
end

numbers = (1..10).to_a
other_numbers = (15..50).to_a
# numbers.each do |number|
#   puts number if number.even?
# end

print_if_even = Proc.new do |number|
  puts number if number.even?
end

numbers.each(&print_if_even)
other_numbers.each(&print_if_even)

# def print_if_even(number)
#   puts number if number.even?
# end

# numbers.each(&:print_if_even))
# hello.call

# Differences with procs and lambdas:

# 1. Lambdas check the number of arguments, procs don't
my_proc = Proc.new { |x, y| puts "I don't care about arguments!" }
# my_proc.call

my_lambda = lambda { |x, y| puts "I will return an error if you don't give me the right arguments! 🤬" }
# my_lambda.call(1, 2) # => 'wrong number of arguments' error! I should pass 2 arguments, x and y

# 2. When they return inside a method, lambas don't interrupt the execution of the function after the `call`, procs do
def lambda_method
  my_lambda = lambda { return "Call me, but if you do other stuff after that, I won't be returned :(" }
  my_lambda.call # it doesn't stop here!
  "You just called the lambda, but I'm not a lambda!"
end

# p lambda_method

def proc_method
  my_proc = Proc.new { return "Call me, and I'll stop the method here!" }
  my_proc.call # it stops here!
  "This text will never be printed :("
end

# p proc_method

#
