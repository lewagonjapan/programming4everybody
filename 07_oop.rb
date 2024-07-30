# OOP = OBJECT ORIENTED PROGRAMMING

# Everything is an object!
# OOP = Data + Behavior
#
# Behavior -> methods

'carl' # data
'carl'.upcase # behavior
'carl'.capitalize # behavior

# Prebuilt Objects
String  # (.upcase .capitalize .reverse)
Array   # (.join, .first, .push .reverse)
Integer # (.even? .positive? .odd?)

# Creating our own class store data and runs behavior
# String -> class    -> cake mold makes the cake
# 'carl' -> instance -> cake

# defining a method
def method_name
end

# defining a class
class Whatever
end

# naming conventions
# methods/variables -> lower_snake_case
# class             -> UpperCamelCase

# Build a mini game in the Terminal to fight to the death
#
# data + behavior
# what kind of attributes should our warrior have? name, health, weapons
# Warrior.new -> trigger the .initialize
#
class Warrior
  # this is triggered by .new
  # set the initial data for our instance
  def initialize(name, weapon)
    # to store data to use later, we an @instance_variable
    @name = name
    @weapon = weapon
    @health = 100
  end

  # instance method
  # warrior.health
  def health
    # inside of instance methods, you always have access to the instance variables
    return @health
  end

  # attr_reader -> a method to read one of the attributes
  def name
    return @name
  end

  def weapon
    return @weapon
  end

  def dead?
    @health < 1
  end

  # attr_writer -> a method to change the value
  def take_damage(hit_points)
    # @health = @health - 20
    @health -= hit_points
  end

  def attack(warrior)
    # get the points for the warrior's weapon
    hit_points = Warrior.weapons[@weapon]
    # remove those points from the health
    warrior.take_damage(hit_points)
  end

  # class method -> self
  # Warrior.weapons
  def self.weapons
    {
      'stick' => 5,
      'axe' => 15,
      'katana' => 20,
      'flail' => 30,
      'rocket launcher' => 50
    }
  end
end


# Airbnb Example

class User
  def initialize(name, phone, address, email, password)
    # ....
  end
end

class House
  def initialize(name, address, photos, zip)
    # ...
  end
end

class Booking
  def initialize(user, house, start_date, end_date)
    @user = user
    # ...
  end
end








def full_name(first_name, last_name)
end
full_name('carl', 'lastname')
