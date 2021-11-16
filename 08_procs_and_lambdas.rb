
# ===== YIELD, PROCS & LAMBDAS =====

# DISCLAIMER: this is really, reaaaaally hard


# Blocks recap

le_wagon = ['sasha', 'doug', 'yann', 'sylvain']

le_wagon.each do |team_member|
    puts "#{team_member} works at Le Wagon"
end

# the do....end part is called a block

# We also saw this:
le_wagon.each { |team_member| puts "#{team_member} works at Le Wagon" }

# Everything between {} is also a block (just a different syntax)


# Why do we have blocks?
# => blocks are *simply* a way to pass some code to a method


# *yield* is a keyword that, when you define a method, allows you to.... access the block


# Yielding without parameters

def greeter
    puts 'hey, I am a greeter!!'
    yield # yield will call the block
end

# Calling the method
greeter do
    # This block will be called with yield
    puts "In Japanese: Konnichiwa!"
end


# Yielding with parameters

def greeter(name)
    puts 'hey, I am a greeter!!'
    yield(name) # Calling the block
end

# Calling the method
greeter('Sylvain') do |user|
    puts "Hey #{user}, Konnichiwa!"
end

# 🤯🤯🤯🤯🤯🤯🤯🤯
# If you did not understand that part, it's fine


#### Procs & Lambdas

# Let's define a method that needs a block:
def greeter
    puts 'hey, I am a greeter!!'
    yield
end

# Let's store a block as a Proc:
japanese = Proc.new do 
    puts 'In Japanese, Konnichiwa'
end

# And call this method, passing this Proc:
greeter(&japanese)


# Question: what happens if the method has a parameter?
# - The first parameter will be the actual method's parameter
# - The second parameter will be our block

def greeter(name)
    puts "hey #{name} , I am a greeter!!"
    yield
end

# Storing a block as a Proc
japanese = Proc.new do 
    puts 'In Japanese, Konnichiwa'
end

# Calling the method, passing first the argument it needs, then the block:
greeter('Sylvain', &japanese)


# You can even turn a method into a Proc! 

le_wagon = ['sasha', 'doug', 'yann', 'sylvain']

cap_le_wagon = le_wagon.map(&:capitalize)


# ====== CONCLUSION ======
# The point of today was to introduce a lot of syntaxes that you should be able to RECOGNIZE, but not REPRODUCE


# ===== LIVECODE =====


# Let's do the pseudo code for the Le Wagon Moon Race!

# 0 - Greeting the user
# 1 - Asking for the name
# 2 - Deciding the opponent (picking from an array)
# 3 - Loop and repeat until game is over
#       1 - roll the dice for each player
#       2 - Drawing the board
#       3 - Calculate the state of the game
# 4 - Depending on the state of the game, keep looping, or...
# 5 - End of game message       


# Methods to define
# - Rolling the dice
# - Drawing the board
# - Calculate the state of the game
# - End of game message




# Q & A

### Q1 - Is it possible to pass what the method returns to the block?
# I don't know 🤔
# maybe 🤷‍♀️


### Q2 - DO you always want to refactor / rewrite your code?

#       1 - make the code work
#       2 - go through it again and try to rewrite it
#       3 - testing
# 
# - Make sure your code is readable
# - In a company, someone else will almost always review your code before going into production


# Q3 - Why is it useful to use yield?

# We have flexibility with the method we define.

# Let's try to build our own select method:

# First, we define a method using yield.
# It will filter an array based on the condition that we will yield from the block:
def select(array)
    result_array = []
    array.each do |element|
        result_array << element if yield(element)
    end
    return result_array
end

# Then, we call that method, passing a block with a condition:
result_array = select(['john', 'jack', 'michael']) do |el|
    el.chars.first == 'j'
end


# If we did not have access to yield, we would need to have a specific method:
def select_j_words(array)
    result_array = []
    array.each do |element|
        result_array << element if element.chars.first == 'j'
    end
    return result_array
end

result_array = select_j_words(['john', 'jack', 'michael'])


