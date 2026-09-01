require_relative '07_oop'

puts "Who is player one?"
warrior1_name = gets.chomp

puts "Who is player two?"
warrior2_name = gets.chomp

warrior1 = Warrior.new(warrior1_name.capitalize, Warrior.weapons.keys.sample)
warrior2 = Warrior.new(warrior2_name.capitalize, Warrior.weapons.keys.sample)

puts "*********************"
puts "Welcome the Le Wagon Arena ⚔️"
puts "*********************"
puts "Battling today, we have"
puts "#{warrior1.name} starting with #{warrior1.weapon}"
puts "\tvs"
puts "#{warrior2.name} starting with #{warrior2.weapon}"
puts " "
sleep(2)
puts 'Fight!'

# until is the opposite of the while
until warrior1.dead? || warrior2.dead?
  # the first warrior is going to start attacking
  puts "#{warrior1.name} pulls out their #{warrior1.weapon}. And attacks #{warrior2.name}"
  # introduce randomness in the attack DND
  if rand(1..10) > 3
    warrior1.attack(warrior2)
    puts "#{warrior1.name} landed an attack"
  else
    puts "#{warrior1.name} missed!"
  end

  puts "#{warrior2.name}'s health is #{warrior2.health}"
  puts ""
  sleep(2)

  unless warrior2.dead?
    # the first warrior is going to start attacking
    puts "#{warrior2.name} pulls out their #{warrior2.weapon}. And attacks #{warrior1.name}"
    # introduce randomness in the attack DND
    if rand(1..10) > 1
      warrior2.attack(warrior1)
      puts "#{warrior2.name} landed an attack"
    else
      puts "#{warrior2.name} missed!"
    end

    puts "#{warrior1.name}'s health is #{warrior1.health}"
    puts ""
    sleep(2)
  end

  warrior1.weapon = Warrior.weapons.keys.sample
  warrior2.weapon = Warrior.weapons.keys.sample
end