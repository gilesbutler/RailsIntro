require 'lib/animal'

class Cat < Animal
  attr_accessor :food_type

  def initialize(food_type)
    @food_type = "#{food_type} #{super}"
  end

  def get_diet
    puts "#{@food_type}"
  end
end