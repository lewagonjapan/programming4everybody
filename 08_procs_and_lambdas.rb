# *Blocks recap*
names = ['doug', 'sylvain', 'sasha', 'yann', 'trouni']

# block -> inside the do..end || {}
# acts as an argument to a method
# blocks are essentially anonymous methods (blocks of code)

# full version
names.each do |name|
  name.upcase
end

# shorthand
names.each { |name| name }

upcased = names.map do |name|
  name.upcase
end

s_names = names.select do |name|
  name.start_with?('s')
end

# *** Yield **
# calls the block (run the anonymous method)

def greet_user(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  # return "#{full_name} buenos dias 👋"
  yield(full_name)
end

greet_user('steven', 'giraldo') do |full_name|
  "#{full_name} buenos dias 👋"
end

greet_user('tyler', 'howell') do |full_name|
  "#{full_name} howdy 👋"
end

greet_user('tyler', 'howell') do |full_name|
  "#{full_name} bonjour 👋"
end

# ** Procs && Lambdas **
# a way to store a block in a variable

proc_message = Proc.new do
  puts 'hello!'
  puts 'I am inside of a proc'
end

lambda_message = lambda do
  puts 'hello!'
  puts 'I am inside of a lambda'
end
# proc_message.call
# lambda_message.call

# 1. Lambdas check the number of arguments, procs don't
my_proc = Proc.new { |x, y| puts "I don't care about arguments!" }
# my_proc.call

my_lambda = lambda { |x, y| puts "I will return an error if you don't give me the right arguments! 🤬" }
# my_lambda.call('first') # => 'wrong number of arguments' error! I should pass 2 arguments, x and y


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

# puts proc_method






