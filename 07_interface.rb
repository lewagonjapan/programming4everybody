require_relative '07_oop'
# Interface -> talk to the user(s)
# puts       -> display the message
# gets.chomp -> get info from the user

puts "Who is warrior one?"
warrior_one_name = gets.chomp
random_weapon = Warrior.weapons.keys.sample
warrior_one = Warrior.new(warrior_one_name, random_weapon)
puts "Who is warrior two"
warrior_two_name = gets.chomp
random_weapon = Warrior.weapons.keys.sample
warrior_two = Warrior.new(warrior_two_name, random_weapon)


puts ''
puts "*********************"
puts "Welcome the Le Wagon Arena ⚔️"
puts "*********************"
puts "Battling tonight we have #{warrior_one.name} vs #{warrior_two.name}"
puts "#{warrior_one.name} is starting with a health of: #{warrior_one.health}"
puts "#{warrior_two.name} is starting with a health of: #{warrior_two.health}"
puts "Fight!"
sleep(2) # for our eyes to catch up

# looping -> while / until
until warrior_one.dead? || warrior_two.dead?
  # fight!
  puts "#{warrior_one.name} is attacking #{warrior_two.name} with a #{warrior_one.weapon}!"
  warrior_one.attack(warrior_two)
  puts "#{warrior_two.name}'s health: #{warrior_two.health}"
  sleep(1)
  puts ""

  puts "#{warrior_two.name} is attacking #{warrior_one.name} with a #{warrior_two.weapon}!"
  warrior_two.attack(warrior_one)
  puts "#{warrior_one.name}'s health: #{warrior_one.health}"
  sleep(1)
  puts ""
end
# result message
if warrior_two.health < warrior_one.health
  puts "#{warrior_one.name} wins!"
elsif warrior_one.health < warrior_two.health
  puts "#{warrior_two.name} wins!"
else
  puts "Everyone died 😭"
end
