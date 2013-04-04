###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#

# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself).
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################

# Print Intro Message
puts "Welcome to the Secret Number Game by Giles Butler"

#Get players name, store it in a variable and capitalize it
puts "What is your name?"
player_name = gets.chomp.capitalize!

# Print Instructions
puts "Hi #{player_name}! You have 3 guesses to guess the Secret Number between 1 and 10."

# Store guess count
guesses_left = 3

# Print amount of guesses left
puts "You have #{guesses_left} guesses left."

# Array of numbers
set_of_numbers = [1,2,3,4,5,6,7,8,9,10]

# Store a random secret number
secret_number = set_of_numbers.sample

# Store player messages
messages = {
    win: "Congratulations #{player_name} you won the Secret Number Game!",
    lose: "Sorry, thats incorrect #{player_name}. You have lost the Secret Number Game!",
    too_low: "You guessed too low, try a higher number next time.",
    too_high: "You guessed too high, try a lower number next time."
}

# Loop through the game asking the player to guess and checking their answer
3.times do

    # Decide whether its the first guess or subsequent guesses
    guess_text = guesses_left == 3 ? 'first' : 'next'

    # Print and store players first guess
    puts "What is your #{guess_text} guess?"
    player_guess = gets.chomp.to_i

    # If the guess is correct abort the game
    if player_guess == secret_number
        abort messages[:win]
    else
        guesses_left -= 1
        puts "Sorry, thats incorrect #{player_name}. You have #{guesses_left} guesses left"
        if player_guess < secret_number
            puts messages[:too_low]
        else
            puts messages[:too_high]
        end
    end

end

# If all guesses are incorrect then put losing message
puts messages[:lose]
puts "The Secret number was #{secret_number}!"
