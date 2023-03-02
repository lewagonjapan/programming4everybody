# OOP = OBJECT ORIENTED PROGRAMMING

# Ruby is everything is an object
# OOP = Data + Behavior

# Data => is the info we want to store
# Behavior => is the actions we want to do on the data (aka methods)

'rachael' # data

'rachael'.capitalize # behavior
'rachael'.upcase # behavior
'rachael'.downcase # behavior
'rachael'.reverse # behavior

# Pre-built object
# String -> (.upcase, .downcase)
# Array -> (.join, .first, .last. .push)
# Hash -> (.key?, .keys)
# Integer -> (.even?, .odd?, .negative?, .postive?)

# We can define our own classes that stores data and runs behavior on it.

# Class vs. instance
String    # cake mold -> make the cakes / define the rules for the cakes
'rachael' # cake

# Naming conventions
# Class
# UpperCamelCase

# methods / variables
# lower_snake_case

# define a method
# def method_name
# end

# defining a class
# class ClassName
# end

# Warrior.new -> creates an INSTANCE of a warrior
# What (data) attributes  do we want to keep about a warrior?
# .new -> creates an instance AND runs the initialize method
class Warrior

  # set the initial data for my instance
  # to store data to use later, we need an INSTANCE variable
  # an intance variable start with a @
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @health = 100
  end

  # rachael.health -> read whatever is inside the instance variable
  # attribute reader
  # INSTANCE method
  def health
    @health
  end

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
    # @health -= 20
    @health = @health - hit_points
  end

  # when we are inside of an instance method, we ALWAYS have access to the instance variables
  def attack(warrior)
    hit_points = Warrior.weapons[@weapon]
    # we need a warrior here
    warrior.take_damage(hit_points)
  end

  # by default, all methods are INSTANCE methods
  # Warrior.weapons -> CLASS method
  # def self.method_name

  def self.weapons
    {
      'sword' => 30,
      'axe' => 20,
      'knife' => 10,
      'spatula' => 1
    }
  end
end


# instance methods
# rachael.name
# rachael.health
# rachael.dead?

# Class methods
# Warrior.new
# Warrior.weapons
