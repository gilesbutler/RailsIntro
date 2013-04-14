# Create 3 classes (Animal, Cat, and Tiger) in separate files.
# The Animal class is the parent class and should contain the following:
# 	Instance Variables:
#		- pet_name
#		- zoo_keeper
#	Methods with the following signature:
#		-  initialize(string1, string2) - Initializes  the pet_name and zoo_keeper instance variables
#		- get_info - This method should print the pet_name and zoo_keeper instance variables
# The Tiger and Cat classes inherit from Animal and contain the following:
#	Instance variables:
#		- food_type
#	Method with the following signature:
#		- initialize(string1, string2) - Initializes the food_type instance variable to a string that is the type of food the animal eats AND uses the super keyword to initialize #the pet_name and zoo_keeper variables which are passed in as arguments.
#		- get_diet  - Prints out the appropriate animal's (cat or tiger's) diet using the value of the  food_type instance variable.

$LOAD_PATH.unshift(File.dirname(__FILE__))

require 'lib/animal'
require 'lib/tiger'
require 'lib/cat'

c = Cat.new('Charlie', 'Giles', 'Anything')
t = Tiger.new('Lily', 'Bob', 'Pigs')


puts c.get_info
puts c.get_diet


puts t.get_info
puts t.get_diet

puts t.food_type
puts c.food_type
