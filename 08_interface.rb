# require 'pry-byebug'
require_relative '07_oop'
# interface -> gets/puts

weapon = Warrior.weapons.keys.sample
rachael = Warrior.new('Rachael', weapon)
weapon = Warrior.weapons.keys.sample
chris = Warrior.new('Chris', weapon)

puts "Welcome to the Le Wagon Arena! ⚔️"
puts "Battling today we have: #{rachael.name} and #{chris.name}"
sleep(2)
puts "#{rachael.name} pulls out a #{rachael.weapon}!"
puts "#{chris.name} pulls out a #{chris.weapon}!"
sleep(2)

until rachael.dead? || chris.dead?
  # Attack mode -> while / until
  puts "#{rachael.name} attacks #{chris.name}!"
  rachael.attack(chris)
  sleep(1)
  puts "#{chris.name}'s health: #{chris.health}"

  puts "#{chris.name} attacks #{rachael.name}!"
  chris.attack(rachael)
  sleep(1)
  puts "#{rachael.name}'s health: #{rachael.health}"
  sleep(1)
end

if rachael.health > chris.health
  puts "#{rachael.name} is the winner!"
elsif rachael.health < chris.health
  puts "#{chris.name} is the winner!"
else
  puts "Everyone died 😭"
end

# rachael.attack(chris)
# puts chris.health

# p Warrior.weapons['spatula']

# user = User.new('douglas.berkley@lewagon.org', 'Doug')
# house = House.new('123 street', 'Tokyo')
# Booking.new(user, house)
