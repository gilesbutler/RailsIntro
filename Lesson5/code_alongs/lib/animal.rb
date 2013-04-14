class Animal
  def initialize(pet_name, zoo_keeper)
    @pet_name = pet_name
    @zoo_keeper = zoo_keeper
  end

  def get_info
    "The pet name is #{@pet_name} and the zoo keeper is #{@zoo_keeper}"
  end
end