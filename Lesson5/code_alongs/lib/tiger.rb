require 'lib/cat'

class Tiger < Cat
  attr_accessor :food_type

  def initialize(food_type)
    @food_type = "#{food_type} #{super}"
  end
end