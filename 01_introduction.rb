# *Ruby* overview:
# - Created by "Matz" in 1995
# - Super easy to pick up, @yukihiro_matz wanted a language that emphasizes human needs over those of computers, and created Ruby as close as possible to spoken english
# - 10 years later, in 2005, @dhh creates Ruby on Rails, an incredibly powerful framework ("extension" of a language) to build web applications
# - Today, Rails is used by a lot of famous companies like Github, Codecademy, Airbnb, and of course Le Wagon 😎
# - At Le Wagon we teach how to build any web app you can think of. This course is just about Ruby, but you can always learn more! Check the readme ⬅

# Let's see it in action!

# *PUTS/PRINT*
puts "--- Programming for everybody ---"
print "Welcome to Le Wagon, "
puts "this is the first lesson of the course"

# *DATATYPES*
puts "---"
puts "1. *Data types*:"
puts 'Hello from Ruby!'.class # String
puts 10.class # Integer (natural number)
puts 1.50.class # Float (decimal with a dot, not a comma!)
puts true.class # TrueClass (boolean)
puts false.class # FalseClass (boolean)
puts nil.class # NilClass (no content, not yet assigned!)

# In general:
# 1. strings to describe text
# 2. integers and floats describe numbers
# 3. booleans describe conditions (true/false)
# 4. nil describes an empty value, not yet assigned
# + many many more!
# These are the basic data types (bricks), and with them you can build any class you want!
# An example is the CSV class, to read/write from/to spreadsheets

# Collections:
# Put different data together with collections (arrays and hashes)!
array = ["a string", 2.99, "another string", true, nil, 1, [], "This array can collect any data, wow!", {}]
puts array.class
# To find an element inside the array, I must know its position (called index in programming)!
# Print the third element (always use `position - 1`, because the index starts at 0):
puts array[2] # => "another string"

hash = {
  key: "a string",
  another_key: 2.99,
  another_key_with_the_name_i_want: "another string"
}
puts hash.class
# In an hash I have a *key* labeling the element of the collection!
# To print the third element (this time with the key):
puts hash[:another_key_with_the_name_i_want] # => "another string"

# *MATH*
puts "---"
puts "2. **Math**"
print "Number? "
number = gets.chomp.to_i # `gets.chomp` = get an input from the user; `.to_i` = make it a number (by default is a string/text)
puts "#{number} by 3 is #{number * 3}!"
print "Exponent? "
exponent = gets.chomp.to_i
puts "#{number} to the #{exponent} power is #{number**exponent}"
print "Divided by? "
divider = gets.chomp.to_i
modulo = number % divider # modulo = rest of a division
puts "#{number} divided by #{divider} is #{(number / divider).to_i}"
puts "The rest is #{modulo}"
print "String to multiply by #{number}? "
string_to_multiply = gets.chomp
puts string_to_multiply * number # you can also do math with strings!

# *BUILT-IN METHODS*
puts "---"
puts "3. *Built-in methods*" # check the docs on ruby-doc.org, or use devdocs.io and select the ruby documentation
# Strings
print "A cool word? "
word = gets.chomp
puts "The length of #{word} is #{word.length}"
puts "If we reverse and make it all upcase, we get #{word.reverse.upcase}"
# Numbers
print "What's your favorite number? "
number = gets.chomp.to_i
puts "Is #{number} odd? #{number.odd?}"
puts "#{number.to_f} is more precise though!" # to_f = to float!
