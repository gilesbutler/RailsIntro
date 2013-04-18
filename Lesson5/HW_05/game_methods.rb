require 'game_error'

module GameMethods
  def print_created_by(author = "Giles Butler")
    puts "Game created by #{author}"
  end

  # This method should increment every time the player guesses incorrectly.
  def increment_guess_count(current_guess_count)
    @current_guess_count = current_guess_count += 1
  end

  def guess_valid(set_of_numbers)
    guess = gets.chomp.to_i
    if set_of_numbers.include?(guess)
      guess
    else
      raise GameError.new('That guess was not in the set of numbers.')
    end
  end
end