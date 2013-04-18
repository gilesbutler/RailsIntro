require "player"
require "secret_number"
require "game_methods"

class Game

  # Include our the game methods module
  include GameMethods

  #	Make sure that all the instance variables in this class may only be READ and not WRITTEN to.
  attr_reader :guesses_allowed, :current_guess_count, :current_guess

  @@messages = {
    win:      "You won!",
    lose:     "You lost! :-(",
    too_low:  "Your guess was too low!",
    too_high: "Your guess was too high!"
  }


	# Initializes The number of guesses (or tries) a player is allowed before the game ends.
	# You should default number of guesses to 3 if the parameter is null.
	# Sets a guess counter to zero.
	# Creates a new instance of the Player class.
	# Creates a new instance of the SecretNumber class and assigns it to the secret_number. Don't forget to pass along the
	# necessary parameters.
  # initializes the current guess to nil
  def initialize(guesses_allowed = 3, set_of_numbers = nil)
    @guesses_allowed = guesses_allowed
    @current_guess_count = 0
    @player = Player.new()
    secret_number = SecretNumber.new(set_of_numbers)
    @secret_number = secret_number.secret_number
    @set_of_numbers = secret_number.set_of_numbers
  end


  # Print who made this wonderful program :-)
  # print_created_by(puts "Game created by Giles Butler")

	# Calls `print_created_by` so that your players knows you created the game.
	# Asks the player to enter his/her name. Save it to @player.name.
	# Print out the number of guesses the players gets and the range of numbers they can choose from.
	# Asks the player for his/her guess. Use the `guess_correct?` method to verify the guess.
	# Continue to ask the user to guess the number so long as they have not maximized the number of guesses allowed
	# and they did not guess correctly.
  # Each time tell the player how many guesses left they have.
	# If at the end of the loop they still did not guess correctly, tell the player that they have lost using the
	# `@@messages` class variable and tell them the secret number.
  def start_game
    print_created_by('Giles Butler')

    puts "What is your name?"
    @player.name = gets.capitalize.chomp

    puts "Hi #{@player.name}! You have #{@guesses_allowed} guessess to get the secret number between #{@set_of_numbers.first} - #{@set_of_numbers.last}"

    while guesses_left()
      # Decide whether its the first guess or subsequent guesses
      guess_text = @current_guess_count == 0 ? 'first' : 'next'

      puts "What is your #{guess_text} guess?"

      begin
        @guess = guess_valid(@set_of_numbers)
        increment_guess_count(@current_guess_count)
        if guess_correct?(@guess.to_i)
          break
        end
      rescue
        puts 'That guess was not in the set of numbers.'
      end

      if @current_guess_count == @guesses_allowed
        puts "#{@@messages[:lose]} The secret number was #{@secret_number}!"
      end

    end


  end



	# This method checks if the player guessed the correct secret number.
  # It shoudl print out if they guessed correctly or guessed too high or too low.
	# Use the `@@messages` Hash to display this feedback.
	# Also let the player know how many guesses they have left.
	# If the guess is correct, make sure to return true, otherwise return false.
  def guess_correct?(guess)
    if guess == @secret_number
      puts "#{@@messages[:win]} Congratulations - #{@secret_number} was the correct secret number!"
      true
    else
      if guess > @secret_number
        puts @@messages[:too_high]
      else
        puts @@messages[:too_low]
      end
      false
    end
  end


  # Calculates the guesses the player has left.
  def guesses_left
    @current_guess_count < @guesses_allowed
  end
end

