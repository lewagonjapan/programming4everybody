# OOP = OBJECT ORIENTED PROGRAMMING

# Everything inside of Ruby is an object
# OOP = data + behavior
#

'ryan' # data (collection of characters)
'ryan'.upcase # behavior (actions that we run on the data)

# Prebuilt Object
String # -> 'ryan' (.upcase, .capitalize, .downcase)
Array # [1, 2]  (.first, .join, .sample, .shuffle)
Integer # 12 (.even?, .odd?, .negative?)

String # class -> cake mold (makes the cake, sets the rules, but not a cake)
'ryan' # instance of that class -> cake

# Class.new -> create an instance of that class
Array.new # generates an instance of an array

# There are created class in Ruby, but we are not limited to them

# defining a method
def method_name(parameter)
end

# defining a class
class WhateverWeWant
end

# naming conventions
# variables / method names -> lower_snake_case
# class                    -> UpperCamelCase

# Building a mini game in the Terminal to simulate a battle royal
one_warrior = { name: 'ryan', weapon: 'knife' }
one_warrior = [ 'ryan', 'knife' ]
# any behavior that i want to do on a warrior,
# it needs to be possible with hash behavior

# create our own Warrior class
# it will hold all the data a warrior needs
# it will run any behavior that we want a warrior to do

# encapsulation -> by default, all the data inside of an instance is protected. Which means, if we want the outside world to access, we need to create a method for that.

# Warrior.new -> creates an instance of a warrior
#  then triggers the .initialize method
class Warrior

  # set some initial data for our instance
  def initialize(given_name, weapon)
    # if we want to store data in the instance, we need an instance variable. -> @health
    @name = given_name
    @weapon = weapon
    @health = 100
  end

  # warrior.name
  def name
    # inside of instance methods, we have access to all of the instance variables
    return @name
  end

  def weapon
    return @weapon
  end

  def health
    return @health
  end

  def dead?
    @health <= 0
  end

  # destructive method
  def take_damage!(hit_points)
    # @health = @health - 20
    @health -= hit_points
  end

  # warrior_one.attack(warrior_two)
  def attack(warrior)
    # get the weapon of the attacking warrior (@weapon)
    # get the hit points of that weapon
    hit_points = Warrior.weapons[@weapon]
    # remove that many hit points from health
    warrior.take_damage!(hit_points)
  end

  # by default, every method is an INSTANCE method -> warrior_one.weapons
  # to create a CLASS method, we use the keyword self
  # Warrior.weapons
  def self.weapons
    {
      'fist' => 1,
      'knife' => 5,
      'crossbow' => 15,
      'mace' => 25,
      'ak47' => 40
    }
  end


end







# numbers = [1, 2, 3]




class User
  def initialize(email, ...)
  end
end


class Home
  def initialize(price_per_day)
  end
end

class Booking
  def initialize(user, home, total_price)

  end
end
