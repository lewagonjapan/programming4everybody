# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object
# Uses objects to store data
# Uses methods to store behavior

# OOP = Data + Behavior

'jeremy'.class
# => data

'jeremy'.upcase
# => behavior

# Pre-built Classes
# String
# Array
# Hash
# Integer

# Class vs instances
# baking comparison
# Class =>  cake mould (rules)
# instace => actual cake (one thing)

# Class
# UpperCamelCase

# methods / variables
# lower_snake_case

# def method_name
# end

# class NameOfClass
# end

# Define a new class
# What data do we want to store?
# What behavior do we want to run on it?

# define a warrior
# what do we want to store about a warrior?
# what will a warrior need to do?

# Class.new => create an instance
# also triggers the .initialize method
# instance -> like a box that holds our data
# @instance variables hold our data
# instance methods, to run behavior on the data

# name, health, weapons
class Warrior
  # gets called with .new
  def initialize(name, weapon)
    # storing some initial data in instance variables
    @name = name
    @weapon = weapon
    @health = 100
    @items = []
  end

  # getter / reader
  # giving access to whatever is store in an instance variable
  def name
    @name
  end

  def add_item(item)
    @items << item
  end

  def health
    @health
  end

  def dead?
    # inside of instance methods, you always have access to the instance variables
    @health == 0
  end

  def take_damage(hit_points)
    @health -= hit_points
  end

  def heal!
    @health += 20
  end

  # jeremy.attack(warrior)
  def attack(warrior)
    weapons = Warrior.weapons # a hash
    hit_points = weapons[@weapon] # integer
    warrior.take_damage(hit_points) # taking health
  end

  def weapon
    @weapon
  end

  def self.weapons
    {
      # weapon => hit_points
      'excalibur' => 50,
      'samurai sword' => 20,
      'bow and arrow' => 10,
      'dagger' => 5
    }
  end
end

# Warrior.weapons.key.sample



jeremy = Warrior.new('jeremy', Warrior.weapons.keys.sample)
mandy = Warrior.new('mandy', Warrior.weapons.keys.sample)
tyler = Warrior.new('tyler', Warrior.weapons.keys.sample)
# jeremy.take_damage!
# jeremy.take_damage!
# jeremy.take_damage!

puts "#{jeremy.name} pulled out a #{jeremy.weapon}"
puts "#{mandy.name} pulled out a #{mandy.weapon}"

until jeremy.dead? || mandy.dead?
  puts "#{jeremy.name} attacks #{mandy.name}"
  jeremy.attack(mandy)
  puts "#{mandy.name} attacks #{jeremy.name}"
  mandy.attack(jeremy)

  puts "#{jeremy.name} health: #{jeremy.health}"
  puts "#{mandy.name} health: #{mandy.health}"
  sleep(1)
end

# jeremy.attack(mandy)
# jeremy.attack(mandy)
# jeremy.attack(mandy)
# jeremy.attack(mandy)
# p mandy.dead?


# class User
#   def initialize(name, password, address...)
#   end
# end

# class Home
#   def initialize(zipcode, address...)
# end

# class Booking
# end




