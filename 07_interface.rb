# load all the files i need for this interface
require_relative '07_oop'

# Interface -> talk to the user(s)
# puts       -> display the message
# gets.chomp -> get information from the user

puts "Who is warrior one?"
warrior_one_name = gets.chomp
puts "Who is warrior two?"
warrior_two_name = gets.chomp

warrior_one = Warrior.new(warrior_one_name)
warrior_two = Warrior.new(warrior_two_name)

puts ''
puts "*********************"
puts "Welcome the Le Wagon Arena ⚔️"
puts "*********************"
puts "Battling tonight we have #{warrior_one.name} vs. #{warrior_two.name}"
puts "We are battling to the death!"
puts "Fight!"
sleep(2)

until warrior_one.dead? || warrior_two.dead?
  puts "#{warrior_one.name} is attacking #{warrior_two.name}!"
  warrior_one.attack(warrior_two)
  puts "#{warrior_two.name}'s health: #{warrior_two.health}"
  sleep(1)
  puts ""

  puts "#{warrior_two.name} is attacking #{warrior_one.name}!"
  warrior_two.attack(warrior_one)
  puts "#{warrior_one.name}'s health: #{warrior_one.health}"
  sleep(1)
  puts ""
end

if warrior_one.health > warrior_two.health
  puts "#{warrior_one.name} won!"
elsif warrior_one.health < warrior_two.health
  puts "#{warrior_two.name} won!"
else
  puts "Everyone died! 😭"
end


# Airbnb
class User
  def initialize(email, password, first_name, last_name)
    # ...
  end
end

class Home
  def initialize(name, address, zip, amenities)
    # ...
  end
end

class Booking
  def initialize(user, home, start_date, end_date)
    # ...
  end
end
