# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object!
# OOP = data + behavior (aka methods)
#
# Prebuilt
'yuki'# string (data)
'yuki'.upcase # .downcase .split .reverse .chars .upcase
12     # integer (data)
12.even? # .odd? .postive? .negative? .to_f
[1, 2, 3]
[1, 2, 3].sample # .reverse .first .shuffle

# Classes -> UpperCamelCase
String # cake mold -> shaping how a string is made
'yuki' # instance of a String (aka our cake)
String.new # creating a new instance of a string
Integer
Array
Array.new # creating a new instance of an array

# defining a method
def method_name(parameter)
end

# defining a class
class WhateverWeWant
end
# p WhateverWeWant.new

# naming conventions
# variable / methods -> lower_snake_case
# classes            -> UpperCamelCase

# Warrior-type game -> battling to the death
# data -> what attributes should a warrior have?
# Warrior.new -> creates an instnace of a warrior (built in)
#             -> triggers .initialize method (built in)
class Warrior

  # set the initial data of our instance
  def initialize(name, weapon)
    # we want to store the data in an @INSTANCE variable
    @name = name
    @weapon = weapon
    @health = 100
  end

  # instance method
  # warrior_one.name
  def name
    # when we are inside of an instance method, we have access to ALL of the instance variables
    return @name
  end

  def health
    return @health
  end

  def weapon
    return @weapon
  end

  # warrior_one.dead?
  def dead?
    @health <= 0
  end

  def take_damage(hit_points)
    @health -= hit_points
  end

  # warrior_one.attack(warrior_two)
  def attack(warrior_being_attacked)
    # get the hit_points from the weapon
    hit_points = Warrior.weapons[@weapon]
    # pass the hit points into take_damage
    warrior_being_attacked.take_damage(hit_points)
  end

  # X => warrior_one.weapons (instance method)
  # ✅ => Warrior.weapons    (class method)

  # to define a class method, we use the keyword self
  # Warrior.weapons
  def self.weapons
    {
      "fists" => 1,
      "dagger" => 5,
      "sword" =>  10,
      "bow & arrow" =>  15,
      "ax" =>  20,
      "mace" => 25
    }
  end
end


# p Warrior.weapons.keys.sample

# Airbnb
# a user books a house

class House

  def initialize(name, address, amenities)
    # @,
  end
end


# array = ['yuki', 100]
# array[0]
# hash = { name: 'yuki', health: 100 }
# hash[:name]
