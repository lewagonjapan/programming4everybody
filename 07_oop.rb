# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object
# OOP = Data + Behavior

# data => the information we want to store
# behavior => actions we want to do on the data (aka methods)

'david' # data
'david'.upcase
'david'.downcase
'david'.capitalize
'david'.reverse
'david'.split(' ')

# Prebuit Objects
# String  (.upcase, .capitalize)
# Array (.join, .first, .last, .push)
# Integer (.even? .positive?)

# We can define our own classes that stores data and runs behavior on it

# Class vs. instance
String # class        -> cake mold makes the cake
'david' # instance    -> cake

# Naming conventions
# Class
# => UpperCamelCase

# methods / variables
# => lower_snake_case

# defining a method
def method_name
  # do whatever
end

# defining a class
class ClassName
end

# to create an instance of a warrior -> Warrior.new
# .new -> creates an instance AND runs the 'initialize' method

# data + behavior
class Warrior

  # set the initial data for my instance
  # store data instance of the instance
  # to keep the data, we have to use an @instance_variable
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @health = 100
  end

  # instance.health
  # instance method -> behavior on the instance
  # inside of instance methods, we always have access to the instance variables
  # attribute reader -> instance method which reads the instance variable of the same name
  # attr_reader :health
  def health
    @health
  end

  def name
    @name
  end


  # This is a shortcut for the method below
  # attr_reader :weapon
  def weapon
    @weapon
  end

  # david.weapon = 'axe'
  attr_writer :weapon

  def dead?
    @health <= 0
  end

  # changing the value of one of our attributes
  def take_damage(hit_points)
    @health -= hit_points
  end

  # david.attack(thomas)
  def attack(warrior)
    # warrior is an instance

    # give me the hit points of my weapon
    hit_points = Warrior.weapons[@weapon]
    # take those points away from the person im attacking
    warrior.take_damage(hit_points)
  end

  # Warrior.weapons
  # by default, methods are instance methods
  # to create a CLASS method, we need to use 'self'
  def self.weapons
    {
      'bazooka' => 40,
      'flamethrower' => 30,
      'axe' => 20,
      'katana' => 10,
      'bow and arrow' => 5
    }
  end

end


class User
  def initialize(email, address, name)
    @email = email
    @name = name
    @address = address
  end
end
