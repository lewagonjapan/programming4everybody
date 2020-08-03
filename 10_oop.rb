### OOP Recap
# Building simple classes


## Dive deeper:
# inheritance
# new notation for readers and writers
# private methods

# Defining a Human class, specify a name
# Define a random lifepoint number
# Define an instance method that checks if my human is dead

require 'faker'

class Human

  # This:
  # attr_reader :name
  # attr_writer :name

  # equivalent to:
  # attr_accessor :name

  attr_reader :name

  def initialize(name)
    # Coming from the user when we create a new instance
    @name = name
    # randomly generated every time we create a new instance
    @lifepoints = rand(10..20)
  end

  def dead?
    @lifepoints <= 0 # return true or false
  end

end

# ===============
### Inheritance
# Warrior inherits from the human class
# It will inherit all its behaviors: initialize and dead? methods
# We can define new methods that will be specific to the Warrior class

class Warrior < Human

  def equip_weapon
    @weapon = 1..5
  end

  def attack
    # Generate a number of "hit points"
    rand(@weapon)
  end

  def get_damage(damage)
    update_life(-damage)
  end

  private

  # private methods can only be called within another method inside the class
  def update_life(value)
    @lifepoints += value
  end

end

julian = Human.new('Julian')
sylvain = Warrior.new('Sylvain')

# ===============
### Livecode

# Fight against the computer!!
# Ask user for a name
# Create a new instance with that name
# Create a new warrior which will be the computer
# (Faker gem: at the end, if you're still around)
# Attack each other *until* one dies
# Give the result of the fight

puts 'Hello! Welcome to our Dungeon & Wagon game!'

puts 'How would you like to name your warrior?'
print '> '
name = gets.chomp

player = Warrior.new(name)
computer = Warrior.new(Faker::Superhero.name)

# Equip a weapon
player.equip_weapon
computer.equip_weapon

# Random quote before the fight! (with Faker)
taunt = Faker::Movies::StarWars.quote
puts "#{player.name}: #{taunt}"


until computer.dead? || player.dead?

  # Define attack from each opponent
  computer_attack = computer.attack
  player_attack = player.attack

  # Inflict damages
  player.get_damage(computer_attack)
  computer.get_damage(player_attack)

  # Display attack results
  puts "#{computer.name} attacked for #{computer_attack} damages"
  puts "#{player.name} attacked for #{player_attack} damages"
  sleep(1)
end

puts player.dead? ? "You lose..." : "You won!!"

# Optional:
# Add a Priest class! The priest can heal
# Randomly generating the computer's name with Faker

# ===============
# Recap of today:

# Alias for readers and writers
# Private methods
# Inheritance

# ===============
# Going further:

# Play with Codewars (8-kyu / 7-kyu)
# Build a scraper
# Online courses: The Odin Project
# Le Wagon workshops: Line Bot, JS for beginners, see you soon!


# See you all soon!
# Le Wagon Tokyo team, with ❤️

