require_relative '09_oop'

james = Warrior.new('James', Warrior.weapons.keys.sample)
olga = Warrior.new('Olga', Warrior.weapons.keys.sample)

puts "#{james.name} pulled out a #{james.weapon}!"
puts "#{olga.name} pulled out a #{olga.weapon}!"

until james.dead? || olga.dead?
  puts "#{james.name} attacks #{olga.name}!"
  james.attack(olga)
  puts "#{olga.name} attacks #{james.name}!"
  olga.attack(james)

  puts "#{james.name}'s health: #{james.health}"
  puts "#{olga.name}'s health: #{olga.health}"
  sleep(1)
end

winner = james.health > olga.health ? james : olga
puts "#{winner.name} is the winner!"



# p Warrior.weapons
# p james
# # p olga
# olga.attack(james)
# olga.attack(james)
# olga.attack(james)
# olga.attack(james)
# puts james.health
# puts james.dead?
# # james.take_damage(????)
