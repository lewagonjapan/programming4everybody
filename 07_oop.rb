# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object!
# OOP = Data + Behavior

# data -> information we want to store
# behavior -> actions we want to run on that data (aka methods)

# String
'yuta' # data
'yuta'.upcase # behavior for a string
'yuta'.capitalize # behavior
'yuta'.reverse # behavior

# Prebuilt Objects
String # .upcase, .capitalize
Array  # .join, .first, .push
Integer # .even? .odd? .positive?

String # class    -> cake mould, makes the cale
'yuta' # instance -> cake

# naming conventions
# methods/variables -> lower_snake_case
# class -> UpperCamelCase

# defing a method -> def
def method_name
end

# defining a class -> class
class ClassName
end

# Build a mini Terminal game to fight to the death
# create a class for a Warrior
# to create an instance of a warrior:
# Warrior.new -> create an instance of a warrior AND triggers the method .initialize

# data + behavior
# what kind of data do we want for a warrior?
class Warrior
  # this gets triggered by .new
  # set the initial data for my instance
  def initialize(name, weapon)
    # to store data to use later, we use @instance_variables
    @name = name
    @weapon = weapon
    @health = 100
  end

  # by default, all methods are INSTANCE methods
  # yuta.name # should return a string with the name
  def name
    # when we are instance INSTANCE methods, we have access to all of the instance variables
    return @name
  end

  # attr_reader -> a shortcut to create a method that reads an instance variable of the same name
  attr_reader :health, :name, :weapon
  # this creates a method to be able to change the instance variable of the same name:
  # yuta.weapon = 'sword'
  attr_writer :weapon
  # def health
  #   @health
  # end

  # warrior.weapon
  # def weapon
  #   @weapon
  # end

  def take_damage(weapon_points)
    # @health = @health - 20
    @health -= weapon_points
  end

  # yuta.dead?
  def dead?
    @health <= 0
  end

  # yuta.attack(fabio)
  def attack(warrior)
    weapon_points = Warrior.weapons[@weapon]
    warrior.take_damage(weapon_points)
  end

  # yuta.weapons    -> DONT WANT INSTANCE METHOD
  # Warrior.weapons -> class method
  # to create a class method, we need def self.method_name
  def self.weapons
    {
      'gun' => 40,
      'axe' => 30,
      'sword' => 20,
      'nunchucks' => 10
    }
  end
end



class User
  def initialize(name)
    @name = name
  end
end

class Home
  def initialize(address)
    @address = address
  end
end

class Booking
  def initialize(user, home, date)
    @user = user
    @home = home
    @date = date
  end
end
