require_relative '07_oop'
# Interface -> talks to the user
# puts / gets.chomp
# (web applications: HTML)

puts "Who is player one?"
warrior_one_name = gets.chomp


puts "Who is player two"
warrior_two_name = gets.chomp

# # create an instance of the warrior
p warrior_one = Warrior.new(warrior_one_name, Warrior.weapons.keys.sample)
p warrior_two = Warrior.new(warrior_two_name, Warrior.weapons.keys.sample)

puts ''
puts "*********************"
puts "Welcome the Le Wagon Arena ⚔️"
puts "*********************"
puts "Battling today we have #{warrior_one.name.capitalize} vs #{warrior_two.name.capitalize}"
sleep(2)
puts "Fight!"

# # while warrior_one.health > 0
until warrior_one.dead? || warrior_two.dead?
  puts "#{warrior_one.name} pulls out a #{warrior_one.weapon}, and attacks #{warrior_two.name}!"
  warrior_one.attack(warrior_two)
  puts "#{warrior_two.name}'s health is #{warrior_two.health}."
  sleep(2)
  puts ''

  puts "#{warrior_two.name} pulls out a #{warrior_two.weapon}, and attacks #{warrior_one.name}!"
  warrior_two.attack(warrior_one)
  puts "#{warrior_one.name}'s health is #{warrior_one.health}."
  sleep(2)
  puts ''
end

p warrior_one
p warrior_two

# # puts "#{warrior_one.name}'s health is #{warrior_one.health}"


# how many hit points is a crossbow?
# p Warrior.weapons['fist']
