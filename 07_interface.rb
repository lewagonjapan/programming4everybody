require_relative '07_oop'

puts 'Who is player 1?'
player_one_name = gets.chomp
puts 'Who is player 2?'
player_two_name = gets.chomp


weapon = Warrior.weapons.keys.sample
player_one = Warrior.new(player_one_name, weapon)
weapon = Warrior.weapons.keys.sample
player_two = Warrior.new(player_two_name, weapon)

puts 'Welcome to the Le Wagon Arena ⚔️'
puts "Battling today we have: #{player_one.name} vs. #{player_two.name}"
sleep(2)
puts "Fight begins!"
puts "#{player_one.name} pulls out a #{player_one.weapon}!"
puts "#{player_two.name} pulls out a #{player_two.weapon}!"

# we want to attack each other until someone is dead
until player_one.dead? || player_two.dead?
  # player one attacking player two
  puts "#{player_one.name} attacks #{player_two.name} with a #{player_one.weapon}"
  if rand(1..10) >= 5
    puts "#{player_one.name} strikes!"
    player_one.attack(player_two)
  else
    puts "#{player_one.name} misses!"
  end
  sleep(1)
  puts "#{player_two.name}'s health: #{player_two.health}"
  sleep(2)

  # player two attacking player one
  # if player two is already dead, they cant attack
  if player_two.health > 0
    puts "#{player_two.name} attacks #{player_one.name} with a #{player_two.weapon}"
    if rand(1..10) >= 5
      puts "#{player_two.name} strikes!"
      player_two.attack(player_one)
    else
      puts "#{player_two.name} misses!"
    end
    sleep(1)
    puts "#{player_one.name}'s health: #{player_one.health}"
    sleep(2)
  end

  player_one.weapon = Warrior.weapons.keys.sample
  player_two.weapon = Warrior.weapons.keys.sample
end
puts ""
sleep(1)
if player_one.health > player_two.health
  puts "#{player_one.name} is the champion!"
elsif player_one.health < player_two.health
  puts "#{player_two.name} is the champion!"
else
  puts 'Everyone died 😭'
end
