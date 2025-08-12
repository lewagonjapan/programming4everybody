# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object
# OOP = Data + Behavior (aka methods)


'renato'
'renato'.capitalize
'renato'.upcase
'renato'.split('')

# Warrior -> data? behavior?

# Prebuilt
String # .upcase / .capitalize
Integer # .even? / .odd? / .positive?
Array # .join / .sample / .shuffle
Hash # .key? / .keys

# create our own class that stores data and run behavior
String   # class (cake mold)
'renato' # instance of a string (cake)
# Hash.new -> creates an instance of a hash
# Array.new -> creates an instance of a array

# defining a method
def method_name
end

# defining a class
class ClassName
end
class WhateverWeWant
end

# naming conventions
# methods / variables -> lower_snake_case
# classes             -> UpperCamelCase

# Warrior.new -> create an instance of a warrior
#   -> and then triggeres the .intialize method
class Warrior
  def initialize(name, weapon)
    # we want to store the data of an instance inside of an @INSTANCE variable
    @name = name
    @weapon = weapon
    @health = 100
  end

  # INSTANCE. method
  # player_one.name
  def name
    # inside of instance methods, we have access to ALL of our instance variables
    return @name
  end

  def health
    return @health
  end

  def weapon
    return @weapon
  end

  # ends in a ? -> return a boolean
  def dead?
    @health <= 0
  end

  def take_damage(hit_points)
    @health -= hit_points
  end

  def attack(warrior)
    hit_points = Warrior.weapons[@weapon]
    warrior.take_damage(hit_points)
  end

  # Warrior.weapons['bow']
  # create a class method -> self
  def self.weapons
    {
      'bow' => rand(5..10),
      'axe' => rand(10..20),
      'sword' => rand(1..15),
      'mace' => rand(20..25)
    }
  end
end

# Warrior.weapons


class User
  def initialize(email, password)
  end
end

class Home
  def initialize(address, name, description)
  end
end


class Booking
  def initialize(user, home, start_date, end_date)
  end
end
