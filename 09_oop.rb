# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object
# OOP = Data + Behavior
# Use objects to store data/state
# Use methods to run behavior

'james' # => data

'james'.capitalize # => behavior
'james'.upcase     # => behavior
'james'.downcase   # => behavior
'james'.split      # => behavior
'james'.length     # => behavior

# Pre-built
# String (capitalize...)
# Array (.length, .join ...)
# Hash (.keys  ...)
# Integer (.even? ...)

# Class vs instance
'james' # => instance (cake)
String  # => Class  (cake mold)

### Naming conventions
# Class
# UpperCamelCase

# methods / variables
# lower_snake_case

# To create an instance:
# Class.new

# defining a method:
def method_name
end

# Define a Warrior class
# what data (attributes) do we want to store about a warrior?

# Warrior.new => creates an instance of a warrior
# .new triggers the .intialize method
# inside of our initialize method, we can store data here first

# instance is like a box that holds alll our data
# @instance variable -> holds data to reuse later
# instance_methods -> run behavior the instance
# When we're inside of an instance method, we have access to ALL of the instance variables

class Warrior
  # gets called with .new
  # this only get run at the beginning
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @health = 100 # defaults 100 for all warriors
  end

  # instance.health (attribute readers)
  # method name is reading the instance variable of the same name
  def health
    @health # tell me what's inside of that instance variable
  end

  # instance.name
  def name
    @name
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
    @health = 0 if @health.negative?
  end

  def attack(warrior)
    # get the hit points for our weapon
    hit_points = Warrior.weapons[@weapon]
    # warrior needs to take damage
    warrior.take_damage(hit_points)
  end

  # def name # => instance method (by default)
  # Warrior.weapons # class method
  # class method => def self.method_name
  def self.weapons
    {
      'Pool Noodle' => 5,
      'Chainsaw' => 30,
      'Sword' => 20,
      'Spear' => 10
    }
  end
end
