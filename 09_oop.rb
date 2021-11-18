# OOP = OBJECT ORIENTED PROGRAMMING



# ===== OBJECT ORIENTED PROGRAMMING =====


# In Ruby everything is an object
# String, Integer, boolean, ...

puts 'Sylvain'.class
puts 'Sylvain'.reverse

# Object Oriented Programming is: Data (also called state) + Behavior


# Tonight, we are going to build our own Objects!!!

# Let's think about a Human
# Example of data (or state): height, weight, age, eye-color
# Example of behavior: eating, sleeping, ...

# ===== LIVECODE =====

# Let's build a mini-game: Diablo-like Hack'n'Slash

# First thing we need, warriors!

# Let's build a warrior class (our warriors 'factory')

class Warrior

    attr_reader :health, :weapon

    # The initialize method is called when we create a new instance with .new
    def initialize(name)
        @health = 50
        @name = name
    end

    # Instance method to be able to access the name
    # This specific method is also called a getter
    def name
        @name
    end

    # Instance method to equip a new weapon
    def equip_weapon!
        @weapon = Warrior.weapons.keys.sample
    end

    # Instance method to simulate health points loss
    def lose_health!(damage_points)
        @health -= damage_points
        @health = [0, @health].max # If health goes below 0, set it back to 0
    end

    # Instance method to attack another warrior, passing a *warrior instance* as argument
    def attack(another_warrior)
        # CAREFUL: another_warrior needs to be a warrior instance
        another_warrior.lose_health!(Warrior.weapons[@weapon])
    end

    # Instance method to check whether a warrior is dead
    def dead?
        @health <= 0
    end

    # CLASS method to list all weapons available for Warriors
    def self.weapons
        {
            'excalibur' => 20,
            'normal sword' => 10,
            'bow'  => 5,
            'toothpick' => 0
        }
    end

end


# Now, let's build our game!

# Creating two instances of the Warrior class
warrior_one = Warrior.new('Toby')
warrior_two = Warrior.new('Giulia')

# Greeting the user
puts 'Welcome to our Le Wagon Bloody Arena Last Man Standing!'
puts ''
puts 'Tonight fighting:'
puts "On my left, #{warrior_one.name}"
puts "On my right, #{warrior_two.name}"
puts ''

# Looping until one warrior is dead
until warrior_one.dead? || warrior_two.dead?
    # Equipping a different weapon at each iteration
    warrior_one.equip_weapon!
    warrior_two.equip_weapon!
    puts "#{warrior_one.name} just grabbed a #{warrior_one.weapon}"
    puts "#{warrior_two.name} just grabbed a #{warrior_two.weapon}"

    # Warriors attacking each other
    warrior_one.attack(warrior_two)
    warrior_two.attack(warrior_one)

    # Displaying the result of the fight
    puts 'Health total after the fight:'
    puts "#{warrior_one.name}: #{warrior_one.health}"
    puts "#{warrior_two.name}: #{warrior_two.health}"
    sleep(1)
    puts ''
end


# Some important notions & vocabulary about OOP

#### Conventions ####
# 1) For classes, we use UpperCamelCase
# 2) For methods, we use lower_snake_case


#### Class ####
# A class defines *what* is a specific object, and what behaviors it has
# It is kind of a mold, or a blueprint


#### Initialize method ####
# The initialize method is run when (and ONLY when) we create a new instance - This means, only when we do Warrior.new
# .new *triggers* the initialize method


#### Instance variable ####
# @health is called an INSTANCE variable
# It describes the state of the instance I created
# It will be accessible throughout the whole class definition


#### Instance Method ####
# def name...end is called an instance method
# We can only call this method on an INSTANCE of the Warrior class
# In this specific case, this def name method returns the name (@name)

#### Destructive Methods ####
# equip_weapon! is going to modify the state of my instances
# That is why, by convention, I add an ! in the name of the method


#### attr_reader ####
# attr_reader is syntax sugar to *read* the value of a specific instance variable


# ===== NEXT STEPS =====

# we could build Priest, Elves classes
# Allow them to heal themselves....


# if we were to build Airbnb, we would have to build the following classes:
# User (age, address, Credit Details, travel habits)
# Apartment (location, price, availability...)
# Booking
# etc...


# Q & A

# Q1 - What was sleep(1)?
# sleep stops my program from running for, in that case, 1 second


# Q2 - Could you explain self and keys a little bit more?


# Q3 - Is it possible to use yield / Proc within an instance method?
# Yes definitely, but we don't often do that