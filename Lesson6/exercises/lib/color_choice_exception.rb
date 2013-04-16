class ColorChoiceException < Exception
  def initialize(message = 'No red, sorry')
    super(message)
  end
end