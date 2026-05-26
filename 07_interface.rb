require_relative '07_oop' # loads my Warrior class
# Interface -> talk to the user(s)
# puts       -> display messages
# gets.chomp -> get info from the user
puts "Who is our first warrior?"
warrior_one_name = gets.chomp
puts "Who is our second warrior?"
warrior_two_name = gets.chomp

warrior_one = Warrior.new(warrior_one_name)
warrior_two = Warrior.new(warrior_two_name)

# Introductions
puts ''
puts "*********************"
puts "Welcome the Le Wagon Arena ⚔️"
puts "*********************"
puts "Batttling tonight we have: #{warrior_one.name} vs #{warrior_two.name}"
puts "#{warrior_one.name} is start with a health of #{warrior_one.health}"
puts "#{warrior_two.name} is start with a health of #{warrior_one.health}"
puts "Fight! ⚔️"
sleep(3) # wait 2 seconds so we can read

until warrior_one.dead? || warrior_two.dead?
  # Warrior 1 attacks 2
  puts "#{warrior_one.name} is attacking #{warrior_two.name}!"
  warrior_one.attack(warrior_two)
  puts "#{warrior_two.name}'s health: #{warrior_two.health}"
  sleep(2)
  puts ""

  # Warrior 2 attacks 1
  puts "#{warrior_two.name} is attacking #{warrior_one.name}!"
  warrior_two.attack(warrior_one)
  puts "#{warrior_one.name}'s health: #{warrior_one.health}"
  sleep(2)
  puts ""
end

# result message
if warrior_one.health > warrior_two.health
  puts "#{warrior_two.name} died!"
  puts "#{warrior_one.name} is the winner!"
elsif warrior_one.health < warrior_two.health
  puts "#{warrior_one.name} died!"
  puts "#{warrior_two.name} is the winner!"
else
  puts "Everyone died, no one won 😭"
end
