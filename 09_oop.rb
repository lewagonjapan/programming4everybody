# OOP = OBJECT ORIENTED PROGRAMMING
'*OOP I*'

# Ruby is an object-oriented language
# As any other OOP language, it uses *objects* to store *attributes* and *methods* to store *behaviours*

# OOP = Data + Behavior

'john lennon'.class
# => data

'john lennon'.capitalize
# => behavior

String.new
# building a string

String.new('john lennon')

# Class vs Instance

# String => class
# classes are like a cake mold
# String
# Array
# Hash
# Range
# UpperCamelCase for Classes

# instance are like cakes
# class_instances are lower_snake_case

# def method_name
# end

# class NameOfClass
# end

# data and behavior
# instance -> (like a box that stores data)
# instance variables for data
# instance methods for behavior

class Warrior
  # gets called after .new
  def initialize(name)
    # store data in instance variables
    @name = name
    @weapons = []
    # @dead = false
    @health = 100
  end

  def dead?
    # inside of instance methods, you always have access to instance variables
    @health == 0
  end

  def kill!
    @health = 0
  end

  # reader
  def name
    @name
  end

  def take_damage!
    # use the bang to indicate a value is being overwritten
    # @health = @health - 20
    @health -= 20
  end

  def health
    @health
  end

  # writer
  def name=(new_name)
    @name = new_name
  end

  def add_weapon(weapon_name)
    @weapons << weapon_name
    # @weapons.push(weapon_name) => same as above
  end

  def print_weapons
    @weapons.each do |weapon|
      puts weapon
    end
  end
end

p warrior_one = Warrior.new('Jon Snow') # => called .initialize

puts 'Adding weapons...'
warrior_one.add_weapon('sword')
warrior_one.add_weapon('wolf')
warrior_one.print_weapons

puts 'Attacking warrior!'
warrior_one.take_damage!
warrior_one.take_damage!
warrior_one.take_damage!
warrior_one.take_damage!
warrior_one.take_damage!
puts warrior_one.health
puts warrior_one.dead?

p warrior_two = Warrior.new('wand')
p warrior_two

p warrior_one == warrior_two
# not the same warriors

# Another example
# class Citizen

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def can_vote?
#     @age >= 18
#   end
# end











