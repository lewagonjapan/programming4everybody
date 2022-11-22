# Don't look! Try it on your own first!
# moon_race.rb

WINNING_NUMBER = 10

def roll_dice
  rand(1..6)
end

def build_board(emoji, position)
  if position <= WINNING_NUMBER
    "#{emoji}: " + ('_' * position) + '🚀' + ('_' * (WINNING_NUMBER - position)) + '🌕'
  else
    ''
  end
end

def display_board(emoji, position, number)
  (position - number).upto(position).each do |num|
    print build_board(emoji, num) + "\r"
    $stdout.flush
    sleep(2 / number.to_f)
  end
end

def send_to_earth(emoji)
  1.upto(WINNING_NUMBER).each do |position|
    print '🌏' + ('_' * (WINNING_NUMBER - position)) + "#{emoji}🚀" + ('_' * position)  + "\r"
    $stdout.flush
    sleep(0.3)
  end
end

def display_dice_roll
  1.upto(5).each do |num|
    print '🎲' + '.' * num + "\r"
    $stdout.flush
    sleep(0.3)
  end
end

def display_scroll_names
  3.times do
    NAMES.each do |name|
      print name + "\r"
      $stdout.flush
      sleep(0.2)
    end
  end
end

print `clear`
puts ''
puts '           Le Wagon Moon Race       '
puts '      First Rocket to the Moon wins   '
puts "          #{WINNING_NUMBER} spaces to victory        "
puts ''
puts build_board('👩‍🚀', 0)
puts build_board('🤖', 0)
puts ''

user_pos = 0
comp_pos = 0

# puts "Who goes first? 1 or 2.."
# print '>'
# number = gets.chomp.to_i

puts "What's your name?"
print '> '
user = gets.chomp + ' 👩‍🚀'

puts 'Finding your opponent....'
sleep(1)
NAMES = ['Ivan 🤖', 'Viktor 🤖', 'Sergey 🤖', 'Andrey 🤖']

display_scroll_names

comp = NAMES.sample
puts "You are racing.... #{comp}"
puts ''
sleep(3)
until user_pos >= WINNING_NUMBER || comp_pos >= WINNING_NUMBER
  print `clear`
  puts "#{user} is up..."
  puts "Press 'enter' to roll the dice 🎲"
  gets.chomp
  display_dice_roll
  number = roll_dice
  puts "You rolled a #{number} 🎲"
  user_pos += number
  display_board('👩‍🚀', user_pos, number)
  puts ''
  sleep(1)

  puts ''
  puts "#{comp} is up next..."
  display_dice_roll
  number = roll_dice
  puts "#{comp} rolled a #{number} 🎲"
  comp_pos += number
  display_board('🤖', comp_pos, number)
  puts ''
  puts "Press 'enter' to continue"
  gets.chomp
  print `clear`
end

puts 'The rocket has landed!'
if user_pos >= comp_pos
  puts 'You got there faster!'
  puts '👩‍🚀🚀🌕'
  send_to_earth('🤖')
else
  puts "#{comp} got there faster!"
  puts '🤖🚀🌕'
  send_to_earth('👩‍🚀')
end

# ctrl + cmd + space
