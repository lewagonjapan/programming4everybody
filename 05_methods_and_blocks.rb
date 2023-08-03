### Methods & blocks

# methods

# Variables => ia a way to store data in order to reuse it later
# methods / functions allow us to store a chunck of code so we can reuse it later

# why ?
# stay DRY => Dont Repeat Yourself
# to breakdown a large problem into smaller pieces

# I define the method/ function
def beautiful_name(first_name, last_name)
  cap_fname = first_name.capitalize
  cap_lname = last_name.capitalize

  full_name = "#{cap_fname} #{cap_lname}"

  return full_name
end

# def add_number(num1, num2)
#   return num1 + num2
# end

# I call the method / use the method
# p beautiful_name('soufiane', 'ezzine')

# p beautiful_name('mahmoud', 'takubo')


# The distinction between defining a method and calling / using the method
# I define a method with parameters / call the method with arguments
# A method will alwaus return the line of code
# the return keyword is optional in ruby

## Naming convention
# - method names are always lower_snake_case
# - methods ending with ? always return a boolean
# - methods ending with ! (dangerous methods / destructive methods) they modify the original data
