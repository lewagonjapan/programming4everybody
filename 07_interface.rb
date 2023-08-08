require_relative '07_oop'
# Interface's job is to communicate with the user
puts "Who is player 1?"
player_one = gets.chomp
puts "Who is player 2?"
player_two = gets.chomp

stephane = Warrior.new(player_one, Warrior.weapons.keys.sample)
nishan = Warrior.new(player_two, Warrior.weapons.keys.sample)

puts 'Welcome the the Le Wagon arena! ⚔️'
puts "Battling today we have: #{stephane.name} and #{nishan.name}"
sleep(2)
puts "Fight begins!"
puts "#{stephane.name} pulls out a #{stephane.weapon}!"
puts "#{nishan.name} pulls out a #{nishan.weapon}!"

# while / until -> attacking mode
until stephane.dead? || nishan.dead?
  puts "#{stephane.name} attacks #{nishan.name} with a #{stephane.weapon}"
  stephane.attack(nishan)
  sleep(1)
  puts "#{nishan.name}'s health: #{nishan.health}"
  sleep(1)

  if nishan.health > 0
    puts "#{nishan.name} attacks #{stephane.name} with a #{nishan.weapon}"
    nishan.attack(stephane)
    sleep(1)
    puts "#{stephane.name}'s health: #{stephane.health}"
    sleep(1)
  end
  stephane.weapon = Warrior.weapons.keys.sample
  nishan.weapon = Warrior.weapons.keys.sample
end

if nishan.health > stephane.health
  puts "#{nishan.name} is the winner!"
elsif nishan.health < stephane.health
  puts "#{stephane.name} is the winner!"
else
  puts "Everyone died 😭"
end
