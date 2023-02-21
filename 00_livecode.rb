# This file is used to livecode each part during a live session

## Q / A session

# Q1
# can have if statement inside a loop = YES YOU CAN

names = ['soufiane', 'richard', 'simone']

names.each do |name|
  if name == 'richard'
    puts 'I found richard'
  end
end

## INLINE IF STATEMENT
# Do something if condition

puts 'I found richard' if name == 'richard'
# Is the same as
if name == 'richard'
  puts 'I found richard'
end

# Q2 is there anything similar to switch statement in javascript
# yes its called a case/when statement
name = 'richard'

case name
when 'soufiane'
  # do something
when 'richard'
  # do something else
else
  # default
end

# Q3 Can the do ... end be replaced with curly braces?
# You can use curlies if you have only one line of code.
names.each do |name|
  puts 'I found richard' if name == 'richard'
  puts 'print something else'
end

names.each { |name| puts 'I found richard' if name == 'richard' }
