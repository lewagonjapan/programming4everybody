# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object!
# OOP = Data + Behavior

# data -> the information we want to store
# behavior -> actions we want to run on that data (aka methods)

"Sergio" # data
"sergio".upcase # behavoir
"sergio".downcase # behavoir
"sergio".capitalize # behavoir
"sergio".reverse # behavoir
"sergio".split('') # behavoir

# Prebuilt Objects
String # (.upcase, .downcase)
Array # (.join, .first, .push)
Integer # (.even?, .odd?, .positive?)

# Creating own classes that stores data and runs behavior
String   # class    -> cake mould makes the cake
'sergio' # instance -> cake

# Naming conventions
# Class -> UpperCamelCase
# methods/variables -> lower_snake_case

# defining a method
def method_name
  # something
end

# defining a class
class ClassName
end

# to create an instance of a warrior:
# -> Warrior.new
# .new -> creates the instance AND triggers the method .initialize

# data + behavior
class Warrior

  # set the initial data for my instance
  def initialize(name, weapon)
    # we store the initial data in @instance variables
    @name = name
    @weapon = weapon
    @health = 100
  end

  # instance method!
  # sergio.health
  # joe.health
  def health
    # when we are inside of instance methods, we have access to ALL instance variables
    return @health
  end

  # attr_reader -> a method that reads a instance variable of the same name
  def name
    return @name
  end

  # attr_reader :weapon create a method called weapon which reads the @weapon
  attr_reader :weapon
  # def weapon
  #   @weapon
  # end
  attr_writer :weapon

  def dead?
    return @health <= 0
  end

  def take_damage(hit_points)
    # @health = @health - 20
    @health -= hit_points
  end

  # joe.attack(sergio)
  # warrrior IS sergio
  def attack(warrior)
    # getting the HP of joe's weapon
    hit_points = Warrior.weapons[@weapon]

    warrior.take_damage(hit_points)
  end

  # CLASS method
  # Warrior.weapons
  def self.weapons
    {
      'sling shot' => 1,
      'shiv' => 5,
      'katana' => 10,
      'battleaxe' => 15,
      'lazer gun' => 20,
      'napalm' => 25
    }
  end
end
