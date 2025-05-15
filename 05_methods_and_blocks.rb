
### Methods
# Called methods, functions or procedures in other programming languages
# A method is defined with a def keyword and closed with end keyword
# When defining a method I may pass *parameters*
# When calling a metghid I need to pass *arguments* ( if the method takes arguments)
# .method and def method() are both methods
# Methods may or may not return values, if its the case it may have a return statement
# The return keyword is optional, the method will alway return the last line's value
# The data type of arguments should match the parameter's use
# The order of arguments should match the order of paramters

# *Define* a method to display team members
def display_team(team_array, team_name)
  team_array.each do |member|
    puts "#{member} is a #{team_name} member!"
  end
end

# use / *invoke* / *call* the method
team1 = ["luis", "youssef", "paul"]
team2 = ["diana", "giada", "donna"]

display_team(team1, "The Coders")
puts " "
display_team(team2, "The Players")


# Naming convetion
# Method names are always ( like variable ) lower_snake_case
# - some methods will end with ? => I know that this method will always ( hopefully ) return a boolean
# - some methods will end with ! => Destructive methods ( dangerous methods )

# ? methods
5.odd?
def is_even?(integer)
  integer % 2 == 0
end

# p 5.even?
# p is_even?(6)

# ! methods

team1 = ["luis", "youssef", "paul"]
p team1
captitalized = team1.map! do |student|
  student.capitalize
  puts ""
end

p captitalized
p team1 # this array is now changed compared to its original form