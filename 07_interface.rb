# we created the class Warrior in the 07_oop file
require_relative '07_oop'

# Communicate with the user
# puts / gets.chomp

puts "Who is Player 1?"
name_one = gets.chomp
puts "Who is Player 2?"
name_two = gets.chomp

player_one = Warrior.new(name_one, Warrior.weapons.keys.sample)
player_two = Warrior.new(name_two, Warrior.weapons.keys.sample)

puts "*********************"
puts "Welcome the Le Wagon Thunderdome ⚔️"
puts "*********************"
puts "Battling today, we have #{player_one.name} vs. #{player_two.name}"
sleep(2)
puts "Fight!!!"

until player_one.dead? || player_two.dead?
  # Player one attacking...
  puts "#{player_one.name} attacks #{player_two.name} with a #{player_one.weapon}!"
  # player_one attack player_two
  player_one.attack(player_two)
  sleep(2)
  puts "#{player_two.name}'s health: #{player_two.health}"
  sleep(2)
  unless player_two.dead?
    # player_two attack player_one
    puts "#{player_two.name} attacks #{player_one.name} with a #{player_two.weapon}!"
    player_two.attack(player_one)
    sleep(2)
    puts "#{player_one.name}'s health: #{player_one.health}"
    sleep(2)
    player_one.weapon = Warrior.weapons.keys.sample
    player_two.weapon = Warrior.weapons.keys.sample
  end
end

# display results
if player_one.health > player_two.health
  puts "#{player_one.name} is the champion!"
elsif player_two.health > player_one.health
  puts "#{player_two.name} is the champion!"
else
  puts "Everyone died...."
end
