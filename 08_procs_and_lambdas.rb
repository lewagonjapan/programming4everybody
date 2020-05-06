# *Blocks recap*

names = ["doug", "sylvain", "sasha"]

names.each do |name|
  # Everything inside here is a *block*!
  name.capitalize
end
# these are the exact same!
names.each { |name| name.capitalize }

# A new powerful method: `map`
# same as `collect` (less common), it modifies each element of a collection

names.map { |name| name.upcase }
puts names
# Nothing happened, because `map` returns just a copy of the original collection, it doesn't modify it!

# I should assign this copy to a new variable
upcase_names = names.map { |name| name.upcase }
puts upcase_names
# or add `!` to the method to modify the original collection (a method with the `!` is a *destructive method*, because it alters the state of the original object)
names.map! { |name| name.upcase }
puts names # it changed!

#############################

# *Yield*
# Use it when you want your method to accept a block

def print_welcome_message
  puts "Welcome to today's lesson!"
  yield # calls the block!
end

print_welcome_message do
  # Everything inside here will replace the yield above!
  puts "Refactoring was easy"
  puts "Now blocks are easy too!"
end


# I can also pass parameters to the yield:
def print_welcome_message(teacher_name)
  puts "Welcome to today's lesson!"
  yield(teacher_name) if block_given?
end

print_welcome_message("sylvain") do |name| # here I have the same variable ("sylvain") available as a parameter (called `name`, but it's arbitrary)!
  puts "Today's teacher is #{name.upcase}"
end

#############################

# *Procs*
# Use them to assign a block to a variable

def print_welcome_message
  puts "Welcome to today's lesson!"
  yield if block_given?
end

today_lecture = Proc.new do
  puts "Refactoring was easy"
  puts "Now blocks are easy too!"
end

# Pass the proc (so, the block!) with this syntax:
print_welcome_message(&today_lecture)

# A proc can also be called without relating it to a method, just use the `call` method on the same proc!
today_lecture.call

# Other example: print even numbers

numbers = (1..100).to_a

numbers.each { |n| puts n if n.even? }
# The block above could be reused, let's make it a proc!
print_if_even = Proc.new { |n| puts n if n.even? }
numbers.each(&print_if_even)

#############################

# *Procs and symbols*
# In Ruby, we can pass a method name (*name*, not the whole method!) with a symbol
# This symbol can be easily turned into a proc!

names = ["doug", "sylvain"]
names.map! { |name| name.upcase }
# We can refer to the `upcase` method with a symbol (`:upcase`), and convert it to a proc by adding a `&` before
names.map!(&:upcase) # note the colon, we are passing a symbol here!
puts names

#############################

# *Lambdas*
# Same as procs, except for (mainly 2) small differences

def print_welcome_message
  puts "Welcome to today's lesson!"
  yield if block_given?
end

today_lecture = lambda do # just a different keyword, it does the same!
  puts "Today's teachers are doug and sylvain"
  puts "We'll talk about procs and lambdas!"
end

print_welcome_message(&today_lecture)

# Differences with procs:

# 1. Lambdas check the number of arguments, procs don't
my_proc = Proc.new { |x, y| puts "I don't care about arguments!" }
my_proc.call

my_lambda = lambda { |x, y| puts "I will return an error if you don't give me the right arguments! 🤬" }
my_lambda.call # => 'wrong number of arguments' error! I should pass 2 arguments, x and y

# 2. When they return inside a method, lambas don't interrupt the execution of the function after the `call`, procs do
def lambda_method
  my_lambda = lambda { return "Call me, but if you do other stuff after that, I won't be returned :(" }
  my_lambda.call # it doesn't stop here!
  "You just called the lambda, but I'm not a lambda!"
end

def proc_method
  my_proc = Proc.new { return "Call me, and I'll stop the method here!" }
  my_proc.call # it stops here!
  "This text will never be printed :("
end

puts lambda_method
puts proc_method




# you'll rarely ever create a method with yield. maybe never.
# you use those methods everywhere! each, map, select...


