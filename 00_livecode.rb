# This file is used to livecode each part during a live session

### ===== LIVECODE =====

# DISCLAIMER: This is an ADVANCED livecode

# Scrape prices from the Rakuten website
# 1) Be able to open a webpage
# 2) understand the structure of an HTML file
# 3) find the elements in the HTML that include prices
# 4) extract those elements

# require / import a gem (=library) to open a web page
require 'open-uri'

# require / import nokogiri gem, it allows us to parse html and search it
require 'nokogiri'

# Open rakuten page and store the HTML in a variable
html = URI.open("https://search.rakuten.co.jp/search/mall/shoes/").read

# Parse HTML string into objects I can manipulate
parsed_html = Nokogiri::HTML(html)

# Searching in the HTML for the elements that include prices
prices = parsed_html.search('.price--OX_YW').first(5).map do |element|
  element.text.strip
end

# Print the resulting array of prices
p prices
