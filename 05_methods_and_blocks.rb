
### Methods



# ==== METHODS =====

# Defining a method to display my Le Wagon team
def display_team(team_array, team_name)
    team_array.each do |team_member|
        puts "#{team_member.capitalize} works for #{team_name}"
    end
end

le_wagon_team = ['sasha', 'yann', 'douglas', 'sylvain']

# Some code to display team members
# Call the method defined earlier
display_team(le_wagon_team, 'Le Wagon')

# Add a team member
le_wagon_team << 'gillian'

puts ''

# Display my new team:
display_team(le_wagon_team, 'Le Wagon')


# Important notions about methods
# 1) A method lets you store some code for later use
# 2) Difference between *defining* and *calling*
# 3) Method signature: name of the method, parameters, what does it return?

# Conventions for methods:
# 1) method name should be lower_snake_case
# 2) ! methods are called destructivbe
# 3) ? methods should return true or false

# .method and def method() are both methods



# ==== LIVECODE =====

# Let's build a scraper!
# We're going to get prices from Rakuten


# Module to open external webpages
require 'open-uri'

# Module to parse (analyze) an HTML document
require 'nokogiri'

puts 'Welcome to our Rakuten scraper!'
puts '====='
puts 'What are you looking for?'
print '> '
search_keyword = gets.chomp
puts ''

# Open the web page
html_string = open("https://search.rakuten.co.jp/search/mall/#{search_keyword}/").read

# Parse (analyze) that gigantic string
parsed_html = Nokogiri::HTML(html_string)

# Search prices in the HTML
parsed_html.search('.price .important').each do |element|
    puts element.text.strip
end


