require_relative '09_oop'
# Interface -> gets / puts -> communicating with the user

joe = Warrior.new('Joe', Warrior.weapons.keys.sample)
ashley = Warrior.new('Ashley', Warrior.weapons.keys.sample)

puts "Welcome the Le Wagon arena! ⚔️"
puts "Battling today we have: #{joe.name} and #{ashley.name}"
sleep(1)
puts "#{joe.name} pulls out a #{joe.weapon}!"
sleep(1)
puts "#{ashley.name} pulls out a #{ashley.weapon}!"
sleep(1)
until joe.dead? || ashley.dead?
  puts "#{ashley.name} attacks #{joe.name}"
  ashley.attack(joe)
  puts "#{joe.name}'s health: #{joe.health}"
  sleep(2)
  puts "#{joe.name} attacks #{ashley.name}"
  joe.attack(ashley)
  puts "#{ashley.name}'s health: #{ashley.health}"
  sleep(2)
end
winner = ashley.health > joe.health ? ashley : joe
puts "#{winner.name} is the winner!"


User.new('douglas.berkley@lewagon.org')
House.new('123 Street')
Booking.new(user, house)
