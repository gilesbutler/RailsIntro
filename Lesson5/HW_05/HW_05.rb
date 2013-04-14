###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 05
#
# Purpose:
#
# Read the instructions below and complete the exercises in this file. This Lab
# will help you review more advanced Object-Oriented topics.
#
# This exercise changes the secret number game into an object oriented program.
###############################################################################
#
# 1. Complete the instructions in secret_number.rb, player.rb and game.rb and HW_05.rb.
#
# 2. Remember to keep your code clean and keep in mind how your file is
#    laid out. You want to make sure that the TAs reading your work will
#    understand your thought process.
###############################################################################
#
# Student's Solution
#
###############################################################################

#	Include the Player, SecretNumber, and Game classes


#   Instantiate a new Game (using your preferred number of guesses, range of numbers)


#   Start the Game.

# Set the load path variable to our current directory
$LOAD_PATH.unshift(File.dirname(__FILE__))

# Require the games classes
require 'player'
require 'secret_number'
require 'game'

# Create a range of number
numbers = (1..10).to_a

# Instantiate a new game
g = Game.new(3, numbers)

g.start_game