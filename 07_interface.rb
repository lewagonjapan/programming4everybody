require_relative '07_oop'
# loads a local file on my computer
# Interface -> talk to the user
# puts / gets.chomp
puts "Who is player one?"
player_one_name = gets.chomp

puts "Who is player two?"
player_two_name = gets.chomp

p player_one = Warrior.new(player_one_name, Warrior.weapons.keys.sample)
p player_two = Warrior.new(player_two_name, Warrior.weapons.keys.sample)

puts ''
puts "*********************"
puts "Welcome the Le Wagon Arena ⚔️"
puts "*********************"

# array[0]
# hash['key']
puts "Battling today we have #{player_one.name} vs #{player_two.name}"
sleep(2) # pauses for 2sec so we can read
puts "Fight!"

# start the loop -> while / until
until player_one.dead? || player_two.dead?
  puts "#{player_one.name} attacks #{player_two.name} with a #{player_one.weapon}!"
  player_one.attack(player_two)
  puts "#{player_two.name}'s health is #{player_two.health}."
  sleep(2)
  puts ''

  puts "#{player_two.name} attacks #{player_one.name} with a #{player_two.weapon}!!"
  player_two.attack(player_one)
  puts "#{player_one.name}'s health is #{player_one.health}."
  sleep(2)
  puts ''
end
# end the loop here

if player_one.health > player_two.health
  puts "#{player_one.name} wins!"
elsif player_one.health < player_two.health
  puts "#{player_two.name} wins!"
else # if the health is the same
  puts 'Everyone died 😭'
end
