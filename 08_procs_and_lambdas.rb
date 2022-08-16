# *Blocks recap*
names = ['doug', 'sylvain', 'sasha', 'yann', 'trouni']

# do |parameter|
# end

names.each do |name|
  name.capitalize
end

names.each { |name| name.capitalize }

# Two way to combine strings
# Interpolation -> building one string and putting stuff inside #{}
# "#{first_name} #{last_name}"

# Concatenation -> adding the strings together
# first_name + ' ' + last_name

# blocks -> block of code
# blocks -> act as an argument to a method
# blocks -> act as an anonymous method

# how can we call the block if it's anonymous (aka no name)
# **** YIELD ****
# yield CALLS THE BLOCK

def style_name(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.capitalize}"
  yield(full_name)
end

# we are giving two arguments
# style_name('aimee', 'teng') do |full_name|
#   puts "Bonjour #{full_name} 👋 🇫🇷"
#   puts "Thank you for coming #{full_name}"
# end

# say_hello('michael', 'stump') do |full_name|
#   puts "Alight mate #{full_name} 👋 🏴󠁧󠁢󠁥󠁮󠁧󠁿"
# end

# To define methods (like .each .map .select) which take a block of code,
# it is a very ADVANCED topic
# You will probably never create a method which takes a block
# But it's important to know what's happening behind the scenes

# map's job is to build an array
caps = names.map do |name|
  name.capitalize
end

upcased = names.map do |name|
  name.upcase
end

# complicated over simplification of hohow Ruby .map works
def map(array)
  new_array = []
  array.each do |element|
    new_array << yield(element)
    # new_array << element.upcase
  end
  return new_array
end

# p names
# p caps
# p upcased

# Proc and a lamba are just ways of storing a block in a variable
proc_message = Proc.new do
  puts "hello!"
  puts "I'm inside of a proc!"
end

lambda_message = lambda do
  puts "hello!"
  puts "I'm inside of a lambda!"
end

proc_message.call
lambda_message.call
