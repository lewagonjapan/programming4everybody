# *Blocks recap*
names = ['doug', 'sasha', 'sylvain', 'yann', 'trouni']

# block -> do... end
names.each do |name|
  name.capitalize
end

names.map do |name|
  name.capitalize
end

names.count do |name|
  name.start_with?('d')
end

# a block is a block of code
# a block acts as an argument to a method
# blocks are essentially anonymous methods

# ** YIELD **
# calls the block

# Two ways to combine strings
# concatenation -> first_name + last_name (adding them together)
# interpolation -> "#{first_name} #{last_name}" (building one string and inserting values)

def greet_full_name(first_name, last_name)
  fullname = "#{first_name.capitalize} #{last_name.capitalize}"
  yield(fullname)
  return fullname
end

# scope-> variables inside of methods ONLY exist inside the method

fullname = greet_full_name('declan', 'mc') do |fullname|
  puts "Dia dhuit #{fullname} 👋 🇮🇪"
end

p fullname

# greet_full_name('julien', 'mc') do |fullname|
#   puts "Bonjour #{fullname} 👋 🇫🇷"
# end

# def hello
#   puts "hello"
#   hello
# end

# hello

# Procs and lambdas
# just ways to store a block into a variable (reuse)
