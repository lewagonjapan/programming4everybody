# OOP = OBJECT ORIENTED PROGRAMMING


# ==== OOP ====

# Object Oriented Programming

# Recap
# In Ruby, everything is an object

# We have objects to store / represent data
# to add a behavior to those objects, we have methods

# The key to understand OOP is to understand the idea of:
# Data (State) + Behavior

# Example with a string:
# 'Sylvain' # This is data
# puts 'Sylvain'.reverse # This is a behavior that we apply to the String

# Now, we're going to build our own objects (classes)!!!
# Let's take an example of a Human:
# - What could be the data / state for that human?
# age, height, weight, heartbeat, ....
# - What could be the behavior?
# running, dying, getting old



# ==== LIVECODE ====
# Let's build a hack'n'Slash game


class Warrior < Human

    # attr_reader allow us to access instance variables
    attr_reader :name, :weapon, :health
    # This method runs when we call .new

    # The initialize method runs when we can .new
    # It is also called a constructor
    def initialize(name)
        @name = name
        @health = 25
    end

    # Instance method to equip a weapon
    def equip_weapon!
        @weapon = Warrior.weapons.keys.sample
    end

    # Instance method to update health
    def lose_health!(damage)
        @health -= damage
        @health = [@health, 0].max # makes sure that health cannot go below 0
    end

    # Instance method to check if a Warrior is dead or not
    def dead?
        @health <= 0
    end

    # Class method, in that case, all weapons available to a Warrior
    def self.weapons
        {
            axe: 10,
            sword: 8,
            shuriken: 5,
            chopstick: 1
        }
    end

end

# Conventions
# Class name has to be UpperCamelCase
# for methods, method name is lower_snake_case

# @health is an instance variable
# It stores the state of a given instance


# Let's build an *instance* of warrior
warrior_one = Warrior.new('Conan') # .new runs the initialize method
warrior_two = Warrior.new('Xena')

puts 'Welcome to the Fight!'
puts "Tonight figting: #{warrior_one.name} vs #{warrior_two.name}"

puts "Let's fight!"
puts ''
# Warrior one attacks warrior two, and vice versa
# each will lose some health

until warrior_one.dead? || warrior_two.dead?
    # Equipping weapons
    warrior_one.equip_weapon!
    warrior_two.equip_weapon!

    # Game information about who grabbed what weapon
    puts "#{warrior_one.name} grabbed a #{warrior_one.weapon}!"
    puts "#{warrior_two.name} grabbed a #{warrior_two.weapon}!"
    
    # Define how much damage each warrior can inflict:
    damage_from_war_one = Warrior.weapons[warrior_one.weapon]
    damage_from_war_two = Warrior.weapons[warrior_two.weapon]

    # Deduct health based on the damage dealt:
    warrior_one.lose_health!(damage_from_war_two)
    warrior_two.lose_health!(damage_from_war_one)

    # Display the state of the game:
    puts "health total:"
    puts "#{warrior_one.name}: #{warrior_one.health}"
    puts "#{warrior_two.name}: #{warrior_two.health}"
    puts ''
    sleep(1)
end

# Find who won the battle:
winner = warrior_one.dead? ? warrior_two.name : warrior_one.name

# Display the winner:
puts "Winner is #{winner}!!"


# Play a bit:
# 1) Create a Priest class, priests can heal themselves
# 2) multi-fights
# 3) Probability to miss a hit


