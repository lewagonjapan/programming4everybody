# Ruby is an object-oriented language

# OOP = OBJECT ORIENTED PROGRAMMING

# OOP = Data + Behavior

# It uses objects to store data (attributes)
# it uses methods to store behaviour

# Class vs. Instance
# class => cake mold
# instance => actual cake

# Class
# UpperCamelCase

# methods / variables
# lower_snake_case

# define our own class
# what data do we want to store?
# what behavior do we want to run on it?

# Warrior.new => creates an instance
# instance => like a box that stores data
# instance methods => behaviour on that data

# .new => .intialize

# .initialize
# => set any initial data

# instance variable => @

# inside of instance methods, you have access to all of the instance variables

class Warrior
  def initialize(name, weapon)
    @name = name
    @weapon = weapon
    @health = 100
    @items = []
  end

  # readers
  def weapon
    @weapon
  end

  def health
    @health
  end

  def items
    @items
  end

  def display_items
    @items.each_with_index do |item, index|
      puts "#{index + 1} - #{item}"
    end
  end

  # writers
  def take_damage(hit_points)
    @health -= hit_points
  end

  def heal!
    @health += 20
  end

  def add_item(item)
    @items << item
  end

  def attack(warrior)
    weapons = Warrior.weapons
    hit_points = weapons[@weapon]
    warrior.take_damage(hit_points)
  end
  # use self.method_name to make it a class method
  def self.weapons
    # weapon => hit_points
    {
      'axe' => 50,
      'toothbrush' => 1,
      'bow' => 10,
      'katana' => 15
    }
  end
end
# def full_name

# end


sasha = Warrior.new('Sasha', 'axe')
sylvain = Warrior.new('Sylvain', 'toothbrush')

# ally = Ninja.new('Ally')
# allan = Ninja.new('Allan')
# p sasha.health
# puts "Sasha taking damage...."
# sasha.take_damage!
# p sasha.health
# puts "Sasha healing...."
# sasha.heal!
# p sasha

sasha.add_item('watch')
sasha.add_item('potion')
sasha.add_item('map')

# sasha.display_items

# p Warrior.weapons

puts "sasha is attacking Sylvain..."
sasha.attack(sylvain)
sylvain.attack(sasha)
puts "Sylvain's health:"
puts sylvain.health

puts "sasha's health:"
puts sasha.health




#
