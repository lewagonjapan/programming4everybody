# OOP = OBJECT ORIENTED PROGRAMMING

# When we talk about objects (OOP), we define objects with two main things:
# Data     -> what the object knows / what it represents
# Behavior -> what the object can do (its methods)

"string".class # String

"Nelo"         # -> data
"Nelo".upcase  # -> behavior
# .downcase .split .reverse .chars

12          # Data (the number itself)
12.odd?     # behavior
# .even? .to_f .positive?

[1, 2, 3]          # -> data
[1, 2, 3].sample   # behavior

# Class and the Instance
"nelo".class    # String
String          # is the mold
"yohei"         # an instance of the String class (a cake)
String.new      # explicitly baking a new empty cake from the String mold

Integer
12

Array
[]
Array.new
Array.new
Array.new
Array.new

# Naming convention:
# When defining methods and variables, we use lower_snake_case
def some_method
end

# Naming convention:
# When defining classes, we use UpperCamelCase
class SomeClass
end

# Our Warrior class

class Warrior
  # attr_reader :name

  @@count = 0
  # Warrior.new -> creates an instance of a Warrior (built-in)
  #             -> it triggers the .initialize() method
  def initialize(name, weapon)
    # We store data in an @instance_variable so it sticks
    # to this specific instance object for its whole lifetime
    @name = name
    @weapon = weapon
    @health = 50
    @@count += 1
  end

  # Instance methods - warrior1.name
  # Getter methods
  def name
    # Inside the instance method, we have access to all the instance variables
    @name
  end

  def health
    @health
  end

  def weapon
    @weapon
  end

  def weapon=(new_weapon)
    @weapon = new_weapon
  end

  def dead?
    @health <= 0
  end

  # Setter method
  def take_damage(hit_points)
    # @health = @health - hit_points
    # @health -= hit_points
    remaining_health = @health - hit_points
    if remaining_health <= 0
      @health = 0
    else
      @health = remaining_health
    end
    # @health = remaining_health <= 0 ? 0 : remaining_health # ternary operator
  end

  # warrior1.attack(warrior2)
  def attack(enemy_warrior)
    hit_points = Warrior.weapons[@weapon]
    # Pass the hit points into the OTHER warrior's take_damage() method
    enemy_warrior.take_damage(hit_points)
  end

  # warrior1.weapons would be an instance method
  # Warrior.weapons -> class method (belongs to the Warrior class)
  # we need to use the self keyword

  def self.weapons
    return {
      "fists" => 1,
      "dagger" => 5,
      "sword" => 10,
      "axe" => 20,
      "mace" => 25
    }
  end

  def self.count
    @@count
  end
end

# Warrior.weapons

warrior1 = Warrior.new('yohei', 'dagger')
warrior2 = Warrior.new('nelo', 'sword')
warrior3 = Warrior.new('nelo', 'sword')

# p warrior2.health
# p warrior2.name
warrior1.attack(warrior2)
# p warrior2.health # 95

# p Warrior.count

class User
  # @name
  # @email
  # @password
end

class House
  # @address
  # @coordinates
end

class Booking
  # @user  => instance of a User
  # @house => instance of a House
end