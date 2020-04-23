#1. ACCESSING AND ELEMENT FROM AN ARRAY

#Display first post only

posts = ["post1", "post2", "post3"]

puts posts[0]



# 2. ADDING AN ELEMENT TO AN ARRAY

#add a new post to my collection of posts

posts = ["post1", "post2", "post3"]

posts << "post4"

puts posts

or

posts = ["post1", "post2", "post3"]

posts.push("post4")

puts posts


# 3. DELETING AN ELEMENT FROM AN ARRAY

#deleting one of my posts

posts = ["post1", "post2", "post3"]

posts.delete_at(1)

puts posts



# 4. CREATING A HASH

#restaurant menu: dusplay the dishes + prices

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

puts restaurant_menu

restaurant_menu = Hash.new
restaurant_menu["Fish"] = "15€"
restaurant_menu["Desert"] = "6€"

puts restaurant_menu


# 5. ACCESSING A KEY-VALUE PAIR FROM A HASH

# online menu -> display the price for a specific dish

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

puts restaurant_menu["Pizza"]


# 6. ADDING A KEY-VALUE PAIR TO A HASH

# add a new dish + price to the menu

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

restaurant_menu["Fish"]=["15€"]

puts restaurant_menu



# 7. DELETING A KEY-VALUE PAIR FROM A HASH

# removing a dish + price from the menu

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

restaurant_menu.delete("Pizza")

puts restaurant_menu




# 8. ITERATING OVER AN ARRAY

#displaying the main ingredient for each of our recipes

recipes = ["Leek", "Carrot", "Shrimp"]

recipes.each do |ingredient|
  puts "Main ingredient for this recipe: #{ingredient}"
end


# 9. ITERATING OVER A MULTIDIMENSIONAL ARRAY

#displaying main ingredients for main dishes and for deserts

recipes = [["Leek", "Carrot", "Shrimp"],["Apple", "Pear", "Cheese"]]

recipes.each do |sub_array|
  sub_array.each do |ingredient|
    puts "Main ingredient for this recipe: #{ingredient}"
  end
end

# 10. ITERATING OVER A HASH

# display the dishes + prices in a customized way 

restaurant_menu = {
  "Pizza" => "10€",
  "Pasta" => "12€",
  "Steak" => "18€"
}

restaurant_menu.each do |meal, price|
  puts "#{meal} price is #{price}"
end
