puts "*-------------------------------*"
puts "- Welcome to Le Wagon Fruit Shop -"
puts "*-------------------------------*"

store_items = {
  'apple' => { price: 500, quantity: 3 },
  'watermelon' => { price: 900, quantity: 30 },
  'kiwi' => { price: 400, quantity: 1 },
  'banana' => { price: 200, quantity: 100 },
  'dragon fruit' => { price: 1_000, quantity: 10 }
}
cart = {}
store_items.each do |item, info|
  puts "#{item}: ¥#{info[:price]} (#{info[:quantity]} available)"
end
user_choice = nil
until user_choice == 'quit'
  puts "Which item? (or 'quit' to checkout)"
  user_choice = gets.chomp.downcase
  if store_items.key?(user_choice)
    puts "How many?"
    quantity = gets.chomp.to_i
    # make sure the store has that amount
    if store_items[user_choice][:quantity] >= quantity
      cart[user_choice] = quantity
      puts "#{user_choice.capitalize} was added to the cart..."
      store_items[user_choice][:quantity] -= quantity
    else
      puts "Sorry, there are only #{store_items[user_choice][:quantity]} #{user_choice} left.."
    end
  else
    puts "Sorry we don't have #{user_choice}..." unless user_choice == 'quit'
  end
end
sum = 0
cart.each do |item, quantity|
  price = store_items[item][:price]
  item_total = price * quantity
  puts "#{item}: #{quantity} X ¥#{price} = ¥#{item_total}"
  sum += item_total
end
puts "TOTAL: ¥#{sum}"
