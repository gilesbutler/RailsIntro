require 'lib/animal'

class Cat < Animal
  attr_accessor :food_type

  def initialize(pet_name, zoo_keeper, food_type)
    super(pet_name, zoo_keeper)
    @food_type = food_type
  end

  def get_diet
    "#{@pet_name} eats #{@food_type}"
  end
end