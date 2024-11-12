# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object
# OOP = Data + Behavior
# Behavior -> methods

'carl' # data (collection of characters)
'carl'.capitalize # behavior

# Prebuilt Objects
String # (.upcase, .capitalize, .reverse)
Array # (.join, .first, .push, .reverse)
Integer # (.even?, .odd?, .postive?, .negative?)
# Array.new
# Hash.new

# Create our own class that stores data and run behavior
String # class -> cake mold (makes the cake, sets the rules)
'carl' # instance -> cake
'amanda' # instance of a string

# defining a method
def method_name
end

# defining a class
class WhateverWeWant
end

# naming conventions
# methods/variables -> lower_snake_case
# class             -> UpperCamelCase


# Build a mini game in our Terminal to fight to the death

# encapsulation -> nothing is accesible until we make it

# data + behavior
# if we want to store a value to reuse later inside of a class, we make an instance variable
# instance variable "live" inside of the instance
age = 30
# Warrior.new -> creates an instance of a warrior
#   and then triggers the .initialize method
class Warrior
  # set some initial data for our instance that we're creating
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @health = 100
  end

  # carl.dead?
  def dead?
    # we have access to ALL instance variables inside of our instance methods
    @health <= 0
  end

  def name
    return @name.capitalize
  end

  # whenever we create a method that reads an instance variable of the same name, there's a shortcut for that
  # attr_reader creates that method
  # attr_reader :health
  def health
    return @health
  end

  attr_writer :weapon
  # this creates a method to change the weapon
  # warrior.weapon = "new weapon"
  # def weapon=(new_weapon)
  #   @weapon = new_weapon
  # end

  def weapon
    @weapon
  end

  def take_damage(hit_points)
    @health -= hit_points
  end

  # warrior_one.attack(warrior)
  def attack(warrior)
    # what is the weapon?
     # this is the weapon of the attacker
    # how do we get the hp?
    hit_points = Warrior.weapons[@weapon]
    # take damage with that hp
    warrior.take_damage(hit_points)
  end

  # self means it's a class method (Warrior.weapons)
  def self.weapons
    {
      'knife' => 5,
      'crossbow' => 10,
      'sword' => 15,
      'axe' => 20
    }
  end
end

# not an instance method, class method
# p Warrior.weapons['axe']

class User
  def initialize(name, email, phone)
  end
end

class House
  def initialize(zip, name, address)
  end
end

def Booking
  def initialize(user, house)
  end
end
