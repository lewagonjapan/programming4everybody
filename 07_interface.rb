require_relative '07_oop' # loads the warrior class
# Interface -> talks to the user
# Terminal game -> puts / gets.chomp

puts "Who is player one?"
warrior_one_name = gets.chomp

puts "Who is player two"
warrior_two_name = gets.chomp

warrior_one = Warrior.new(warrior_one_name, Warrior.weapons.keys.sample)
warrior_two = Warrior.new(warrior_two_name, Warrior.weapons.keys.sample)

puts "*********************"
puts "Welcome the Le Wagon Arena ⚔️"
puts "*********************"
puts "Battling today, we have #{warrior_one.name.capitalize} vs #{warrior_two.name.capitalize}"
sleep(2)
puts 'Fight!'

# loop -> while / until
until warrior_one.dead? || warrior_two.dead?
  puts "#{warrior_one.name} pulls out a #{warrior_one.weapon}! And attacks #{warrior_two.name}"
  if rand(1..10) > 3
    warrior_one.attack(warrior_two)
    puts "#{warrior_one.name} landed an attack"
  else
    puts "#{warrior_one.name} missed!"
  end
  puts "#{warrior_two.name}'s health is #{warrior_two.health}."
  puts ''
  sleep(2)

  unless warrior_two.dead?
    puts "#{warrior_two.name} pulls out a #{warrior_two.weapon}! And attacks #{warrior_one.name}"
    if rand(1..10) > 3
      warrior_two.attack(warrior_one)
      puts "#{warrior_two.name} landed an attack"
    else
      puts "#{warrior_two.name} missed!"
    end
    puts "#{warrior_one.name}'s health is #{warrior_one.health}."
    puts ''
    sleep(2)
  end
  warrior_one.weapon = Warrior.weapons.keys.sample
  warrior_two.weapon = Warrior.weapons.keys.sample
end

# puts "Our first warrior is #{warrior_one.name}. Their health is #{warrior_one.health}. They pulled out a #{warrior_one.weapon}."

# warrior_one.take_damage
# p warrior_one
# p warrior_one.heal!
