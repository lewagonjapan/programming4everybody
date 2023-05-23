require_relative '07_oop'
# gets / puts -> communicating with the user

alan = Warrior.new('Alan', Warrior.weapons.keys.sample)
jovon = Warrior.new('Jovon', Warrior.weapons.keys.sample)

puts '---------------------'
puts 'Welcome to the Le Wagon Arena ⚔️'
puts '---------------------'
puts "Battling today: #{jovon.name} and #{alan.name}"
sleep(2)
puts "#{jovon.name} pulls out a #{jovon.weapon}"
puts "#{alan.name} pulls out a #{alan.weapon}"
sleep(2)

until jovon.dead? || alan.dead?
  puts "#{jovon.name} attacks #{alan.name}!"
  jovon.attack(alan)
  sleep(1)
  puts "#{alan.name}'s health: #{alan.health}"
  sleep(1)

  puts "#{alan.name} attacks #{jovon.name}!"
  alan.attack(jovon)
  sleep(1)
  puts "#{jovon.name}'s health: #{jovon.health}"
  sleep(1)
end

if jovon.health > alan.health
  puts "#{jovon.name} is the winner!"
elsif jovon.health < alan.health
  puts "#{alan.name} is the winner!"
else
  puts 'Everyone died 😭'
end


class User
  def initialize(name)
    @name = name
  end
end

class House
  def initialize(address)
    @address = address
  end
end
