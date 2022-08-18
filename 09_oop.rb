# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object
# OOP = Data + Behavior
# Use objects to store data
# Use methods to run behavior

'khan'               # => data
'khan'.upcase        # => behavior
'khan'.capitalize    # => behavior
'khan'.downcase      # => behavior

12                   # => data
12.even?             # => behavior

# Pre-built objects
# string
# array
# integer

# When we're in OOP, we dont have to rely on pre-built objects
# Now we have the power to create any kind of data/behavior that we want

# Class vs instances
'khan'   # => instance (cake)
'edward' # => instance (cake)
String   # => Class    (cake mold)

# Naming conventions
# Class
# UpperCamelCase

# methods / variable
# lower_snake_case

# How do we create an instance?
# Class.new

# defining method:
def method_name
end

# defining class:
class ClassName
end

# defining a Warrior class
# data     -> what attributes to we want to store about a warrior?
# behavior -> what do we want our warrior to do? (methods)

# Warrior.new => creates an instance of a warrior
# .new trigger the .intialize method

# instance -> (like a box that stores all of our data)
# @instance_variable -> store data to use later


class Warrior
  # gets called with .new
  # this is a way to store some initial data
  def initialize(name, weapon)
    @name = name # this name is coming from Warrior.new(name, x)
    @weapon = weapon # this name is coming from Warrior.new(x, weapon)
    @health = 100 # defaults at 100 for all warriors
  end

  # instance method -> khan.name
  # attribute reader -> reading the instance variable of the same name
  def name
    # when we're inside of an instance method, we have access to ALL instance variables
    @name
  end

  def health
    @health
  end

  def weapon
    @weapon
  end

  # khan.dead?
  def dead?
    @health <= 0
  end

  def heal
    @health += 20
    @health = 100 if @health >= 100
  end

  # attribute writer -> change one of our instance variables
  def take_damage(hit_points)
    # how strong is the weapon???
    @health -= hit_points
    @health = 0 if @health.negative?
  end

  def attack(warrior)
    hit_points = Warrior.weapons[@weapon]
    warrior.take_damage(hit_points)
  end

  # To create a Class method -> self.method_name
  def self.weapons
    {
      'water gun' => 1,
      'fry pan' => 5,
      'shotgun' => 10,
      'katana' => 20,
      'grenade' => 35
    }
  end
end

# defining the hit points of all the weapons
# .weapons
# khan.weapons
# p Warrior.weapons['grenade']

# inteface.rb -> interacts with the user (gets/puts)

khan = Warrior.new('khan', Warrior.weapons.keys.sample)
tilda = Warrior.new('tilda', Warrior.weapons.keys.sample)

puts 'Start the battle! ⚔️'
# loop -> while / until
until tilda.dead? || khan.dead?
  tilda.attack(khan)
  puts "#{khan.name.capitalize} was hit with a #{tilda.weapon} and is now at #{khan.health} health"
  sleep(0.8)

  khan.attack(tilda)
  puts "#{tilda.name.capitalize} was hit with a #{khan.weapon} and is now at #{tilda.health} health"
  sleep(0.8)
end

if khan.health == tilda.health
  puts "It's a draw!"
elsif khan.health > tilda.health
  puts "#{khan.name} wins!"
else
  puts "#{tilda.name} wins!"
end
# p tilda

# Airbnb
# class User
  # def intialize
  #   @name = name
  #   @address = address
  #   @password = password
  # end
# end

# class Home
  # def intialize
  #   @name = name
  #   @address = address
  #   @zip_code = zip_code
  # end
# end
