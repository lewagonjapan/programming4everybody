# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object
# OOP = Data + Behavior
# Data => objects to store info
# Behavior => use methods

'joe' # => data

'joe'.capitalize # behavior
'joe'.upcase # behavior
'joe'.split # behavior
'joe'.length # behavior

# Pre-built object
# String
# Array (.join, .last, .first, push)
# Hash (.key?, .keys)
# Integer (.even? .negative?)

# We can define new classes and store data and run behaviour on them

# Class vs. instances
String # cake mold -> make cakes
'joe'  # cake
# Class defines the rules about what an instance can do

# Naming Conventions
# Class
# UpperCamelCase

# methods / variables
# lower_snake_case


# define a method:
# def method_name
# end

# class ClassName
# end

# Warrior.new -> creates an instance of a warrior
# What (data) attributes do we want to store about a warrior?
# .new -> creates an instance AND runs the initialize method

# instance -> like a box that holds all of our data
# @instance_variable -> holds all of our data to reuse later
# instance_method -> run behavior on our instance
# when we are instance of an instance method,
# we ALWAYS have access to the instance variables
# we ALWAYS have access to the other instance methods
class Warrior

  # gets triggered by the .new
  # set the initial data for my instance
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @health = 100 # default to 100 for all warrior instances
  end

  # def name # => instance method (by default)
  # Warrior.weapons # class method
  # def self.name => class method


  # Visual Studio Code - > VS Code
  # Sublime Text
  def self.weapons
    {
      'hurtful words' => 100,
      'axe' => 35,
      'sword' => 25,
      'knife' => 15,
      'toothpick' => 5,
      'pillow' => 1
    }
  end

  # joe.name => read whatever is inside of @name
  # attribute reader -> reading one of the instance variables
  def name
    @name
  end

  def health
    @health
  end

  def weapon
    @weapon
  end

  def dead?
    @health <= 0
  end

  def take_damage(hit_points)
    # @health = @health - 20
    @health -= hit_points
  end

  # ashley.attack
  def attack(warrior)
    # asking the weapons has for the hit_points of a specific weapon
    hit_points = Warrior.weapons[@weapon]
    # take those points away from the warrior
    warrior.take_damage(hit_points)
  end

  def heal
    @health += 20
  end
end
