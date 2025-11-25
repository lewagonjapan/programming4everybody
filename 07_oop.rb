# OOP = OBJECT ORIENTED PROGRAMMING

# Everything in Ruby is an object!
# OOP = Data + Behavior (aka methods)

'Jose' # string
'Jose' # data -> collection of characters
'jose'.capitalize
'jose'.upcase
'jose'.chars
'jose'.split('0')

# Prebuilt
String # .upcase / .capitalize
Integer # .even? / .odd? / .positive?
Array # .join / .sample / .shuffle
Hash # .keys / .key?

# 12.upcase # cant do
12.even?

# Create our own class that stores data and runs behavior
String # class (cake mold)
'jose' # instance of a string (cake)
Hash.new # creates an INSTANCE of a hash
Array.new # creates an INSTANCE of an array

# define a method
def method_name
end

# define a new class
class WhateverWeWant
end

class ClassName
end

# naming conventions
# methods / variables -> lower_snake_case
# classes             -> UpperCamelCase

# Build a mini "game" in the terminal to battle till death
# data -> what attributes does our warrior need?
# behavior -> what actions/methods does our warrior need?
# Warrior.new -> creates an instance of a warrior (built it)
#             -> triggers the .initialize method (built it)
class Warrior
  # set the initial data of our instance
  def initialize(name)
    # we want to store the data of the instance in an @INSTANCE variable
    @name = name
    @health = 100
  end

  # INSTANCE METHOD
  # warrior_one.name
  def name
    # when we are inside of an instance method, we have access to ALL of our instance variables
    return @name
  end

  def health
    return @health
  end

  def dead? # return a boolean
    @health <= 0
  end

  def take_damage
    @health -= rand(5..20)
  end

  # warrior_one.attack(warrior_two)
  def attack(warrior_being_attacked)
    # the points that should be removed could come from the weapon of the warrior
    warrior_being_attacked.take_damage
  end
end
