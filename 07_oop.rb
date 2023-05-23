# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object

# Prebuilt objects
# String -> (.upcase, .downcase)
# Array -> (.join, .first, .last, .push)
# Hash -> (.key?, .keys)
# Integer - >(.even? , .odd? , .to_s, .negative?)
# Float -> (.round, .ceil)

# OOP = Data + Behavior
# Data => the information that we want to store
# Behavior => actions we want to run on the data (aka methods)

'alan' # data

'alan'.capitalize # behavior
'alan'.upcase # behavior
'alan'.downcase # behavior
'alan'.split # behavior
'alan'.reverse # behavior

# We can define our own classes that store data and run behavior on it

# Class vs instance
'alan' # -> cake         # instance of a string
String # -> cake mould   # defines the rules of the instances

# Naming conventions
#   Class -> UpperCamelCase
#   methods / variables -> lower_snake_case

# define a method
def method_name
end

# define a class
class ClassName
end

# Warrior.new -> creates an INSTANCE of a warrior
# What data (attributes) do we want to store about a warrior?
# .new -> creates the instance AND runs the .initialize method
class Warrior

  # initialize -> set the initial data for my instance
  # to store the data to use later, we need an instance variable
  # instance variable starts with a @
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @health = 100
  end

  # instance method -> instance.name / alan.name
  # inside of instance methods, you have access to ALL instance variables
  # attribute readers -> a method to read one of our instance variables
  def name
    return @name
  end

  # alan.health
  def health
    return @health
  end

  # alan.weapon
  def weapon
    return @weapon
  end

  # convention -> ends in a ?, then it returns a boolean
  def dead?
    @health <= 0
  end

  # convention -> ends in a !, then it's changing a value
  def take_damage(hit_points)
    # @health = @health - 20
    @health -= hit_points
  end

  # jovon.attack(alan)
  def attack(warrior)
    hit_points = Warrior.weapons[@weapon]
    warrior.take_damage(hit_points)
  end

  # alan.weapons
  # Warrior.weapons -> class method
  # by default, everything is a instance method
  # create a class method -> def self.method_name
  def self.weapons
    {
      'napkin' => 1,
      'spoon' => 5,
      'fork' => 10,
      'knife' => 15,
      'chopsticks' => 25
    }
  end
end

# p alan = Warrior.new('Alan', 'spoon')
# p jovon = Warrior.new('Jovon', 'fork')
# puts alan.health
# alan.take_damage!
# puts alan.health
