# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object
# OOP = Data + Behavior

# data => the information we want to store
# behavior => actions we want to do on the data (aka methods)

'anthony' # data
'anthony'.upcase # behavior
'anthony'.downcase # behavior
'anthony'.capitalize # behavior
'anthony'.reverse # behavior
'anthony'.split('t') # behavior

# Prebuilt Objects
# String (.upcase, .downcase)
# Array (.join, .first, .last, .push)
# Integer (.even?, .postive?)

# We can define our own classes that stores data and run behavior on it

# Class vs. instance
String    # class      -> cake mold, makes the cakes
'anthony' # instance   -> cake

# Naming Conventions
# Class
# => UpperCamelCase

# methods / variable
# => lower_snake_case

# defining a method
def method_name
end

# defining a class
class ClassName
end

# create an instance of a Warrior -> Warrior.new
# What (data) attributes do we want to keep about a warrior?
# .new -> creates an instance AND runs the initialize method
class Warrior

  # set the initial data for my instance
  # we want to store some data inside of the instance
  # to store data, we use an @instance_variable
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @health = 100
  end

  # nishan.health -> read whatever is inside of that instance variable @health
  # INSTANCE method
  # attribute reader
  attr_reader :health
  def health
    @health
  end

  def name
    @name
  end

  def weapon
    @weapon
  end

  def weapon=(new_weapon)
    # reassigning the weapon
    @weapon = new_weapon
  end

  def dead?
    @health <= 0
  end

  def take_damage(hit_points)
    # @health = @health - 20
    @health -= hit_points
  end

  # nishan.attack(stephane)
  # get the weapon of nishan
  def attack(warrior)
    # warrior is an INSTANCE
    hit_points = Warrior.weapons[@weapon]
    warrior.take_damage(hit_points)
  end

  # Warrior.weapons -> class method
  # to create a class method, def self.method_name
  def self.weapons
    # weapons and hit points
    {
      'spoon' => 10,
      'sling shot' => 20,
      'spear' => 30,
      'sword' => 40
    }
  end

end
