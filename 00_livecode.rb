# This file is used to livecode each part during a live session




# Default Parameter
# If I pass 1 argument, rev will be false
# If I pass 2 arguments, rev will take the value of
# my second argument
def alphabetize(arr, rev = false)
  if rev
    arr.sort!.reverse
  else
    arr.sort!
  end
end

numbers = [5, 1, 3, 8]

# Calling alphabetize with 1 argument
# rev = false
p alphabetize(numbers)

# Calling alphabetize with 2 arguments
# rev = true
p alphabetize(numbers, true)






















