# *Blocks recap*
# block -> inside of the do...end

names = ['doug', 'sylvain', 'sasha']
# .each  => original (array or a hash)
# .map

# .map == .collect
upcased_names = names.map do |name|
  name.capitalize
end
p upcased_names

# builing a .map with a .each
capitalized_names = []
names.each do |name|
  capitalized_names << name.capitalize
end

# **** Yield ****
# Yield calls the block
# acts as an anonymous method

def welcome_message(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  yield(full_name)
end

welcome_message('allan', 'yoshi') do |full_name|
  p full_name
  puts "Hello 👋 #{full_name}"
end

welcome_message('kayne', 'ali') do |name|
  puts "Bonjour 👋 #{name}"
end

# * Proc && Lambda *
# a way to store a block in a variable

hello = Proc.new do
  puts "I'm inside of the proc"
  puts "It's a block of code"
end

hello = lambda do
  puts "I'm inside of the proc"
  puts "It's a block of code"
end

numbers = [1, 2, 3, 4]

print_if_even = Proc.new do |number|
  puts number if number.even?
end

# numbers.each(&print_if_even)

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
















