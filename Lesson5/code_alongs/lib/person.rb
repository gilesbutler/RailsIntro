class Person
  attr_reader :first_name, :last_name
  attr_accessor :middle_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def full_name
    "#{@first_name} #{@middle_name} #{@last_name}"
  end
end