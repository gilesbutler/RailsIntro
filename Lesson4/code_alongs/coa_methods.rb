################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Methods
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################

months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

states = {
	"Australian Capital Territory" => "ACT",
	"New South Wales" => "NSW",
	"Northern Territory" => "NT",
	"Queensland" => "QLD",
	"South Australia" => "SA",
	"Tasmania" => "TAS",
	"Victoria" => "VIC",
	"Western Australia" => "WA"
}

# 1. Write a method which accepts a province code and returns the province name. Ask the user to input a code
# then display the result of passing the input to your method. If the hash does not include the province code
# they provide, let the user know their input is invalid. Challenges in this exercise include: how to access
# the provinces hash from within your method, and how to return the hash key (province name) by using its
# value (province code). You may want to explore built-in Hash class methods including .has_value? .invert and .fetch.
puts "\n--------------------" # line to distinguish exercise output

# def get_state_name(states, state_code)
#   state_index = states.values.index(state_code)
#   if state_index == nil
#     puts "Invalid State Code"
#   else
#     states.keys[state_index]
#   end
# end

def get_state_name(states, state_code)
  if state_index = states.values.index(state_code)
    states.keys[state_index]
  else
    puts "Invalid State Code"
  end
end


puts "Enter your state code"
state_code = gets.chomp

if state_name = get_state_name(states, state_code)
  puts "State name is #{state_name}"
end

# 2. Write a method which accepts any number of parameters representing months, by number 1 ("January") through
# 12 ("December"), and displays the corresponding month names in a single line. Be aware of variable scope, and
# that arrays begin with zero, not one.
puts "\n--------------------" # line to distinguish exercise output

