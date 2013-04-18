class GameError < StandardError
  def initialize(message = 'That number is not in the set.')
    super(message)
  end
end