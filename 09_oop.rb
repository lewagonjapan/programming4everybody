# OOP = OBJECT ORIENTED PROGRAMMING

# OOP = Data + Behavior

# It uses objects to store data (attributes)
# It uses methods to store behavior

# Class vs. instance
# Class => cake mold (rules)
# instance => actual cake (one thing)

'rory hayes'
# data

'rory hayes'.upcase
# behavior

# Class
# UpperCamelCase

# methods / variables
# lower_snake_case

# Define our own class
# What data do we want to store?
# What behavior do we want to run on it?

# .new => .intialize (store any data that we want)

# name, health, weapon
# each instance of a warrior is like a box

class Warrior
  # constructor
  def initialize(name, weapon)
    # store initial data in INSTANCE variables
    @name = name
    @weapon = weapon
    @health = 100
  end

  # INSTANCE METHODS
  # rory.health
  # dave.name
  # Warrior.name 🙅‍♀️
  # readers (reading the attribute)
  attr_reader :name, :health, :weapon # generate this method 👇
  # def name
  #   @name # string
  # end

  # def health
  #   @health
  # end

  # # rory.weapon
  # def weapon
  #   @weapon
  # end

  def dead?
    @health <= 0
  end

  # dave.weapons 🙅‍♀️
  # rory.weapons 🙅‍♀️
  # Warrior.weapons
  def self.weapons
    {
      'bazooka' => 50,
      'battle axe' => 25,
      'sword' => 10,
      'water gun' => 1
    }
  end

  # instance.weapon = "new weapon"
  attr_writer :weapon
  # writers (changing the attributes)
  def take_damage(hit_points)
    @health -= hit_points
  end

  rory.heal!
  def heal!
    # self == rory
    @health += 20
  end

  # rory.attack
  # inside of an insance method, you always have access to the INSTANCE VARIABLES
  def attack(target)
    weapons = Warrior.weapons # hash
    hit_points = weapons[@weapon] # integer
    target.take_damage(hit_points) # remove rorys weapon from dave
  end
end

rory = Warrior.new('Rory', Warrior.weapons.keys.sample)
dave = Warrior.new('Dave', Warrior.weapons.keys.sample)

until dave.dead? || rory.dead?
  puts "#{rory.name} attacks #{dave.name} with #{rory.weapon}"
  rory.attack(dave)
  puts "#{dave.name} attacks #{rory.name} with #{dave.weapon}"
  dave.attack(rory)
end
puts "Rory's health: #{rory.health}"
puts "Dave's health: #{dave.health}"


# dave.weapon = 'sword'
# p dave

 # hash
# p weapons['battle axe']
# p weapons['water gun']

# puts "#{rory.name} attacks #{dave.name} with #{rory.weapon}"
# rory.attack(dave)

# dave.attack(rory)

# puts "#{dave.name} take some healing potion! Health: #{dave.heal!}"
# puts "Dave's health:"
# puts dave.health
# puts "Rory's health:"
# puts rory.health
# rory.attack(dave)
# puts dave.health # 50
# rory.attack(dave)
# puts dave.health # 25
# rory.attack(dave)
# puts dave.health # 0

class Ninja < Warrior
end

# jossue = Ninja.new('Jossue', 'sword')
# jossue.name


# class Recipe
#   def initialize(name, description, prep_time)
#   end
# end

# class User
# # username, email, address, name, zip_code
# end

# class Apartment
# end

# class Booking
#   # date, user, apartment
# end










