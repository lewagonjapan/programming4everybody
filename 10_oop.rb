### OOP Recap



# This gem allows us to create randomly generated names
# For more details: https://github.com/faker-ruby/faker
require 'faker'


# Let's create a Human class
class Human

  # attr_reader :name
  # attr_writer :name
  # is equivalent to:
  attr_accessor :name
  attr_reader :life

# A human has a name and life points
  def initialize(name)
    @name = name
    @life = rand(10..20)
  end

# A human can be dead or not
  def dead? # true / false, true if dead
    @life <= 0 # true if life is 0 or less
  end


  # A human can equip a weapon
  def equip_weapon
    @weapon = 1..5
  end

  # A human can attack
  # Attack is going to be a random number between 1 and 5
  def attack
    rand(@weapon) # Integer
  end

  # A human can be attacked (receive damages)
  def receive_damage(damage)
    update_life(-damage) # Calling the private update_life method
  end

  private

  # private method to update the life of our human
  def update_life(value)
    @life += value
  end

end

# Testing that our Human class works
john = Human.new('john')
john.dead?


### New concepts
# We should only show what methods / instance variables are necessary

# How can we read the name?
"Your human is named #{john.name}"

# How can I update the name of my human?
john.name = "John Doe"
"Your human is named #{john.name}"

#================

## Let's create a Warrior class

# Warrior inherits all its behavior from the Human class
# Syntax: class Child < Parent
class Warrior < Human

# All the Warrior's behaviors are inherited from Human

end

# Optional: Priest class
# Priest inherits its behaviors from Humann
class Priest < Human

  # This method will override the equip_weapon from Human
  def equip_weapon
    @weapon = 1..3
  end

  # This is a new behavior, for Priest only
  def heal
    update_life(rand(1..2))
  end

end


# Testing our Warrior class
conan = Warrior.new('Conan')
conan
conan.equip_weapon
conan.receive_damage(3)
conan.attack
conan

#================

## Game
# Fight until death!!

puts "Welcome to our Le Wagon fight!!"
puts "--------"

# Let our user choose a class
puts "Choose your class! Priest | Warrior"
class_choice = gets.chomp

# Asking user for the name
puts "Choose your #{class_choice}'s name:"
name = gets.chomp

# Creating Warrior / Priest instance based on player's choice
case class_choice
when 'Warrior'
  player = Warrior.new(name)
  player.equip_weapon
when 'Priest'
  player = Priest.new(name)
  player.equip_weapon
else
  puts "sorry, that class doesn't exist!"
end

# Creating computer's fighter with a random name! (using faker gem)
computer = Warrior.new(Faker::Games::WorldOfWarcraft.hero)
computer.equip_weapon

# warriors will fight until one dies

until player.dead? || computer.dead?

  # We determine the strength of the attack
  damage_to_computer = player.attack
  damage_to_player = computer.attack

  # They deal damage to each other
  player.receive_damage(damage_to_player)
  computer.receive_damage(damage_to_computer)

  # Heal if priest
  player.heal if player.is_a? Priest

  # Show result of the attack
  if player.dead? || computer.dead?
    puts "The fight is over!"
  else
    puts "You lost #{damage_to_player} life - Your life is: #{player.life}"
    puts "#{computer.name} lost #{damage_to_computer} life - Life is: #{computer.life}"
  end
  puts ''
  sleep(1)
end

# Show result of the fight
if player.dead?
  puts "You lost! Go back to the Shire"
else
  puts "You Won with #{player.life} life left! Let's go to the next dungeon"
end

#================

### Going further
# create Priest class (Priest can fight AND heal!!)
# Give choice to our player between Warrior and Priest
# What happens when both player and computer die??
# Randomly generated names
# File structure: class definition and fight logic should be in 2 separate files



















