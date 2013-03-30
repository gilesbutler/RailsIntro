###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator.
#
# 2. Ask the user for their name and store it in a variable.
#
# 3. Personally greet the player by printing to the screen, "Hi player_name!
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.
#
# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
#
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.
#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
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

# Store a random secret number
secret_number = rand(1..10)

# Store player messages
winner_message = "Congratulations you won the Secret Number Game!"
too_low_message = "You guessed too low, try a higher number next time."
too_high_message = "You guessed too high, try a lower number next time."

# Print and store players first guess
puts "What is your first guess?"
player_guess = gets.chomp.to_i

# If the players guess is the secret number print they win, if not deduct a guess and give them another go
if player_guess == secret_number
    abort winner_message
else
    guesses_left -= 1
    puts "Sorry, thats incorrect. You have #{guesses_left} guesses left"
    if player_guess < secret_number
        puts too_low_message
    else
        puts too_high_message
    end
end

# If the players guess is the secret number print they win, if not deduct a guess and give them another go
player_guess = gets.chomp.to_i

if player_guess == secret_number
    abort winner_message
else
    guesses_left -= 1
    puts "Sorry, thats incorrect. You have #{guesses_left} guesses left"
    if player_guess < secret_number
        puts too_low_message
    else
        puts too_high_message
    end
end

# If the players guess is the secret number print they win, if not print they lose
player_guess = gets.chomp.to_i

if player_guess == secret_number
    abort winner_message
else
    guesses_left -= 1
    puts "Sorry, thats incorrect. You have lost the Secret Number Game!"
    puts "The Secret number was #{secret_number}!"
end