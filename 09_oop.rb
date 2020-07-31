# * OOP I*
# OOP = OBJECT ORIENTED PROGRAMMING

# Ruby is an object-oriented language

# OOP = Data + Behavior
# data == 'le wagon'
# behavior == .upcase

# String == Class
# clases are like cake mold
# convention => UpperCamelCase

# 'le wagon' == instance
# instances are the cakes
# convention => lower_snake_case

# .new => create a new instance
# instance => a box

class Warrior
  # gets called after .new
  # what data do we want to store in the beginning
  def initialize(weapon)
    # store data inside of instance variables
    @weapon = weapon
    # all instances will have 100 health when created
    @health = 100
  end

  # .weapon is an INSTANCE method
  # reading the instance variable
  # reader will read whatever value is in the instance variable
  # attr_reader :weapon
  def weapon
    @weapon
  end

  def health
    @health
  end

  def dead?
    @health == 0
  end

  # write over the instane variable
  # writer creates a method to overwrite the istance variable
  # attr_writer :weapon
  # THIS IS THE EXACT THING AS ABOVE
  def weapon=(new_weapon)
    @weapon = new_weapon
  end

  def take_damage!
    # use the bang operator to indicate an instance variable being changed
    @health -= rand(1..20)
  end

  def kill!
    @health = 0
  end
end

# puts 'Creating our warrior...'
# # Class.new => creates an instance...
warrior_one = Warrior.new('sword')
p warrior_one

# warrior_two = Warrior.new('axe')
# p warrior_two

# puts 'are they the same?'
# p warrior_one == warrior_two

puts "Our warrior's health:"
puts warrior_one.health
puts ''

puts 'Our warrior is under attack...'
warrior_one.take_damage!

puts "Our warrior's health:"
puts warrior_one.health
puts

puts 'Is our warrior dead?'
puts warrior_one.dead?

# If we try to use a hash we are limited to what a hash has to offer...
# warrior_one = {
#   weapon: 'sword',
#   health: 100,
#   damage_taken: 20
# }

# p warrior_one[:health] -= warrior_one[:damage_taken]
