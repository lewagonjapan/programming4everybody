# we created the class Warrior here so we need to load it first
require_relative '07_oop'

# Communicating with the user
# puts / gets.chomp

puts "What's player one's name?"
name_one = gets.chomp

puts "What's player two's name?"
name_two = gets.chomp

player_one = Warrior.new(name_one, Warrior.weapons.keys.sample)
player_two = Warrior.new(name_two, Warrior.weapons.keys.sample)


# array[0]
# hash['key']

puts "*********************"
puts "Welcome the Le Wagon Arena ⚔️"
puts "*********************"
puts "Battling today, we have #{player_one.name.capitalize} vs #{player_two.name.capitalize}"
sleep(2) # a way to pause for 2 seconds
puts "Fight!"

# start the loop
until player_one.dead? || player_two.dead?
  puts "#{player_one.name} is attacking with a #{player_one.weapon}"
  player_one.attack(player_two)
  puts "#{player_two.name}'s health is #{player_two.health}."
  sleep(2)

  unless player_two.dead?
    puts "#{player_two.name} is attacking with a #{player_two.weapon}"
    player_two.attack(player_one)
    puts "#{player_one.name}'s health is #{player_one.health}."
    sleep(2)
  end
  puts ''

  # how can i change player's weapon???
  player_one.weapon = Warrior.weapons.keys.sample
  player_two.weapon = Warrior.weapons.keys.sample
end
# end the loop

# display the results
if player_one.health > player_two.health
  puts "#{player_one.name} is the champion!"
elsif player_two.health > player_one.health
  puts "#{player_two.name} is the champion!"
else
  puts 'Everyone died...'
end
# loop -> while / until
