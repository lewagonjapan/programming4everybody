# OOP = OBJECT ORIENTED PROGRAMMING

# Everything is an object
# OOP = Data + Behavior
# Behavior -> methods

'paul'
'paul'.capitalize
'paul'.upcase
'paul'.downcase

# Warrior -> data? behavior?


# Prebuilt Objects
String # (.upcase, .downcase, .capitalize)
Integer # (.even?, .odd?, positive?, .negative?)
Array # (.join, .sample, .shuffle, .push, .reverse)
Hash
Symbol

# Create our own class that stores data and runs behavior
String # class    -> cake mold
'paul'   # instance of a string -> cake
'hyelim' # instance of a string -> cake
# Array.new -> creates a cake
# Hash.new  -> creates a cake

# defining a method
def method_name
end

# defining a class
class ClassName
end
class WhateverWeWant
end

# naming conventions
# method/variables -> lower_snake_case
# class            -> UpperCamelCase

# Build a mini game in our Terminal to fight to the death

# data + behavior

# instance variables "live" inside of the instance

# Warrior.new -> creates an instance of a Warrior
#   and then triggers the .initialize method
class Warrior
  # set some initial data for our instance we're creating
  def initialize(name, weapon)
    # if we want to store data in the instance, we need an INSTANCE variable
    @name = name
    @weapon = weapon
    @health = 100
  end


  # INSTANCE METHOD
  # player_one.name
  def name
    # inside of instance methods, we have access to ALL of the INSTANCE variables
    return @name
  end

  def health
    return @health
  end

  def weapon
    return @weapon
  end

  # return a boolean
  def dead?
    @health <= 0
  end

  def take_damage(hit_points)
    # @health = @health - 20
    @health -= hit_points
  end

  # player_two.attack(player_one)
  def attack(warrior)
    # warrior is the person being attacked
    # we get the weapon from the attacker
    # we ask the hash for the hit_points of that weapon
    # we tell the warrior being attacked to remove those hit_points from their health
    hit_points = Warrior.weapons[@weapon]
    warrior.take_damage(hit_points)
  end

  # paul.weapons
  # create a Class method
  # Warrior.weapons
  # to define a class method -> self
  def self.weapons
    {
      'nunchucks' => 5,
      'sword'     => 10,
      'axe'       => 15,
      'chainsaw'  => 20,
      'bomb'      => 50
    }
  end
end


# Airbnb

class User
  def initialize(name, email, password)
    # ...
  end
end

class House
  def initialize(title, address, zip)
    # ...
  end
end

class Booking
  def initialize(start_date, end_date, house, user)

  end
end
