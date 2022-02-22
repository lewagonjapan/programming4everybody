# *Blocks recap*

# Two topics, refactoring and blocks, procs and lambdas

# Recap about blocks

le_wagon = ['sasha', 'douglas', 'yann', 'sylvain']

le_wagon.each do |member|
    puts "#{member.capitalize} works at LW"
end

# Can also be written:
le_wagon.each { |member| puts "#{member.capitalize} works at LW" }


# How do blocks work?
# Very advanced concepts

# LIVECODE: build a greeter method

def greeter
    puts 'Hey, I am a greeter bot!'
    yield # tells the method to look into the block, and execute the code
end

# Calling the method
greeter()

# Call the method, passing a block
greeter() do 
    puts 'In Japanese: Konnichiwa!'
end

# Now we can customize the greeting message!
greeter() do 
    puts 'In French: Bonsoir!'
end

# that's cool, but what's the point?

# It gives flexibility to the person who calls the method:
# Hey guys, I am the one who wrote the greeter method!
# To use it, just call it and pass a block
# In the block, you can say hi with the language you want


# What happens with block paramaters?
def greeter(user)
    puts 'Hey, I am a greeter bot!'
    yield(user) # tells the method to look into the block, and execute the code
end

# Call the method, passing a block
greeter('Edmund') do |name|
    puts "In Japanese: Konnichiwa #{name}!"
end

# 🤯🤯🤯🤯🤯🤯🤯🤯🤯🤯


### Procs & Lambdas

# Procs are a way to store blocks


def greeter
    puts 'Hey, I am a greeter bot!'
    yield # tells the method to look into the block, and execute the code
end


# Storing our block in a Proc
japanese = Proc.new do
    puts 'In Japanese: Konnichiwa!'
end

# Pass the proc as an argument of the method
greeter(&japanese)

# We can use symbols to call common Ruby methods as Procs:

le_wagon = ['sasha', 'douglas', 'yann', 'sylvain']

cap_le_wagon = le_wagon.map(&:capitalize)

p cap_le_wagon


# 🤬🤬🤬🤬🤬🤬🤬🤬🤬🤬


# Two concepts: Refactoring and blocks, procs and lambdas
