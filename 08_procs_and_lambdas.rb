# *Blocks recap*
# block -> inside of the do...end || { }
# blocks are essentially annoymous methods (block of code you run)
# don't use 'return' inside the block


names = ['doug', 'sylvain', 'sasha', 'yann']

# .map == .collect
# build a new array
# only the last time gets put inside

upcased = names.map do |name|
  letters = name.split('')
  letters.first.capitalize
end

# this is the same logic as .map
# upcased = []
# names.each do |name|
#   letters = name.split('')
#   upcased << letters.first.capitalize
# end

# ************
# *Yield*
# yield calls the block (run the anonymous method)

def welcome_message(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  # "Hello #{full_name}"
  yield(full_name, '👋') # calls the block
end

# welcome_message('celine', 'tonus') do |full_name, wave|
#   puts "Bonjour #{full_name} #{wave}"
# end

# welcome_message('ada', 'p') do |full_name|
#   puts "Hello #{full_name}"
# end

# def welcome(msg)
# end
# welcome("hello")

# ADVANCED - Ruby developers
# def map(array)
#   new_array = []
#   array.each do |element|
#     new_array << yield(element)
#   end
# end

# * Proc && Lambda *
# a way to store a block in a variable


proc_message = Proc.new do
  puts "Hello there"
  puts "I'm inside of a proc"
end

lambda_message = lambda do
  puts "Hello there"
  puts "I'm inside of a lambda"
end

# proc_message.call
# lambda_message.call

# 1. Lambdas check the number of arguments, procs don't
my_proc = Proc.new { |x, y| puts "I don't care about arguments!" }
# my_proc.call('hello', 'another')

my_lambda = lambda { |x, y| puts "I will return an error if you don't give me the right arguments! 🤬" }
# my_lambda.call('first', 'second') # => 'wrong number of arguments' error! I should pass 2 arguments, x and y


# 2. When they return inside a method, lambas don't interrupt the execution of the function after the `call`, procs do
def lambda_method
  my_lambda = lambda { return "Call me, but if you do other stuff after that, I won't be returned :(" }
  my_lambda.call # it doesn't stop here!
  "You just called the lambda, but I'm not a lambda!"
end

# puts lambda_method

def proc_method
  my_proc = Proc.new { return "Call me, and I'll stop the method here!" }
  my_proc.call # it stops here!
  "This text will never be printed :("
end

puts proc_method





