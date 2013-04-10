require 'lib/employee'

class Manager < Employee
  attr_accessor :title

  def initialize(title, first_name, last_name)
    super(first_name, last_name)
    @title = title
  end

  def full_name
    "#{@title} #{super}"
  end

end