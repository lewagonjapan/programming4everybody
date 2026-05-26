# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object!
# OOP = data + behavior (aka methods)

# Prebuilt object
"louis" # data (string)
"louis".capitalize # behavior (method)
12.even?
[1, 2, 3] # data
[1, 2, 3].shuffle

12 # instance of an Integer (cake)
Integer  # class (cake mold)
"louis" # instance of a string (cake)
String # class (cake mold)

# defining a method
def method_name(parameter)
end

# defining a class (mold)
class WhateverWeWant
end
# create an instance of that class
WhateverWeWant.new

# Naming conventions:
# variables / method_names -> lower_snake_case
# Classes                  -> UpperCamelCase

# to load a local file
# require_relative 'name_of_file'

# Goal -> Warrior fight till the death game
# data -> what attributes should our warrior have?
# Warrior.new -> create an instance of a warrior
#             -> triggers .initialize method (built it)
class Warrior

  # initialize is given to us by default\
  # set the initial data of our instance
  def initialize(name)
    # store the value in an INSTANCE variable
    @health = 100
    @name = name
  end

  def name
    # what should this method return?
    # when we are instance of a method, we have access to all of hte instance variables
    return @name.capitalize
  end

  # warrior.dead?
  # method that ends in a ?, it should return a boolean
  def dead?
    return @health <= 0
  end

  def health
    return @health
  end

  def take_damage
    # @health = @health - 20
    @health -= rand(5..20)
  end

  # louis.attack(jp)
  def attack(other_warrior)
    other_warrior.take_damage
  end

end


# Airbnb
class User
  def initialize(email, password, address)
    # ...
  end
end

class Home
  def initialize(address, photos, zip)
    # ...
  end
end

class Booking
  def initialize(start_date, end_date, user, home)

  end

  def total_price
    number_of_days * price_per_night
  end
end
