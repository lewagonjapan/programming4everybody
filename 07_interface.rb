# loads the final where we defined the Warrior class
require_relative '07_oop'
# Talks to the user -> puts/gets.chomp

puts "Who is player one?"
warrior_one_name = gets.chomp

puts "Who is player two"
warrior_two_name = gets.chomp


weapon = Warrior.weapons.keys.sample
warrior_one = Warrior.new(warrior_one_name, weapon)

weapon = Warrior.weapons.keys.sample
warrior_two = Warrior.new(warrior_two_name, weapon)

puts "*********************"
puts "Welcome the Le Wagon Arena ⚔️"
puts "*********************"
puts "Battling today, we have #{warrior_one.name.capitalize} vs #{warrior_two.name.capitalize}"
sleep(2) # a way to pause for 2 seconds
puts "Fight!"

until warrior_one.dead? || warrior_two.dead?

  puts "#{warrior_two.name} pulls out a #{warrior_two.weapon}! And attacks #{warrior_one.name}"

  warrior_two.attack(warrior_one)

  puts "#{warrior_one.name}'s health is #{warrior_one.health}"

  puts ''
  sleep(2)

  unless warrior_one.dead?
    puts "#{warrior_one.name} pulls out a #{warrior_one.weapon}! And attacks #{warrior_two.name}"

    warrior_one.attack(warrior_two)

    puts "#{warrior_two.name}'s health is #{warrior_two.health}"

    sleep(2)
    puts ''
  end
  # build out the game -> give each player a new weapon each round
end




# p Warrior.weapons['stick']
