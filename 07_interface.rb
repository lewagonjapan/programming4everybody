# loading the file where we're defining the Warrior class
require_relative '07_oop'
# Interface -> talk to the user
# puts / gets.chomp

puts "Who is player one?"
player_one_name = gets.chomp
puts "Who is player two?"
player_two_name = gets.chomp

player_one = Warrior.new(player_one_name, Warrior.weapons.keys.sample)
player_two = Warrior.new(player_two_name, Warrior.weapons.keys.sample)

puts ''
puts "*********************"
puts "Welcome the Le Wagon Arena ⚔️"
puts "*********************"

puts "Battling today we have #{player_one.name} vs. #{player_two.name}"
sleep(2)
puts "Fight!"

until player_one.dead? || player_two.dead?
  puts "#{player_one.name} attacks #{player_two.name} with #{player_one.weapon}!"
  player_one.attack(player_two)
  puts "#{player_two.name}'s health is #{player_two.health}."
  sleep(1)
  puts ""

  unless player_two.dead?
    puts "#{player_two.name} attacks #{player_one.name} with #{player_two.weapon}!"
    player_two.attack(player_one)
    puts "#{player_one.name}'s health is #{player_one.health}."
    sleep(1)
    puts ""
  end
end

if player_one.health > player_two.health
  puts "#{player_one.name} win!"
elsif player_one.health < player_two.health
  puts "#{player_two.name} win!"
else
  puts "Everyone died 😭"
end
