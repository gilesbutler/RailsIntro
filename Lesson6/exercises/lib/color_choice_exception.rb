class ColorChoiceException < StandardError
  def initialize(message = 'No red, sorry')
    super(message)
  end
end