# OOP = OBJECT ORIENTED PROGRAMMING

# Ruby is an object-oriented language

# As any other OOP language, it uses *objects* to store *attributes* and *methods* to store *behaviors*

# OOP = Data + Behaviour

# Class vs. Instance
# class => cake mold
# instance => actual cake

# Class
# UpperCamelCase

class NameOfClass
end

# method_name / variables
# lower_snake_case

def method_name
end

# data and behavior
# instance => like a box that stores data
# instance methods => behavior we run on that data

# define our own class
# what data do we want to store?
# what behaviour to we want to run on it?

# behavior -> read and write on the data
class Warrior
  # .new runs the .initialize
  # constructor
  def initialize(name, weapon)
    # instance variable -> stores info in an instance
    @name = name
    @weapon = weapon
    @health = 100
    @inventory = []
  end

  # instance method
  # always have access to the instance variables
  def name # we want to read the name
    @name
  end

  attr_reader :health, :weapon, :inventory
  # def health
  #   return @health
  # end

  attr_writer :weapon
  # def weapon=(new_weapon)
  #   @weapon = new_weapon
  # end

  def take_damage(hit_points)
    @health -= hit_points unless @health < hit_points
  end

  def dead?
    @health <= 0
  end

  def heal!
    @health += 20
  end

  def add_inventory(item)
    @inventory << item
  end

  def display_inventory
    @inventory.each_with_index do |item, index|
      puts "#{index + 1} - #{item}"
    end
  end

  # sasha.attack(sylvain)
  # instance method
  def attack(warrior)
    # what's going to happen in attack
    # give sasha's weapon's points to sylvain
    # sasha.weapon
    hit_points = Warrior.weapons[weapon]

    warrior.take_damage(hit_points)
  end

  # Warrior.weapons
  def self.weapons
    {
      'katana' => 20,
      'watergun' => 1,
      'machine gun' => 50,
      'brass knuckles' => 5,
      'flame thrower' => 100
    }
  end
end
# .new => creates a new instance
# puts "Whats's your warrrior's name?"
# name = gets.chomp


sasha = Warrior.new('Sasha', 'flame thrower')
sylvain = Warrior.new('Sylvain', 'watergun')

sasha.attack(sylvain)
sylvain.attack(sasha)
p sasha
# sylvain.attack(sasha)
# sasha.attack(sylvain)
# sasha.attack(sylvain)
# sasha.attack(sylvain)
# sasha.attack(sylvain)

# p sasha
# p sylvain
# p sylvain.health # => 80
# p sylvain.dead?
# p Warrior.weapons

# p sylvain
# p sasha.weapon = 'machine gun'
# sasha.add_inventory('potion')
# sasha.add_inventory('key')
# sasha.display_inventory
# sasha.take_damage!
# sasha.take_damage!
# sasha.take_damage!
# sasha.take_damage!
# sasha.take_damage!
# sasha.take_damage!
# sasha.take_damage!
# sasha.take_damage!
# sasha.take_damage!
# sasha.take_damage!
# p sasha.health
# p sasha.dead?
# sasha.heal!
# puts 'healing potion...'
# p sasha.dead?










#
