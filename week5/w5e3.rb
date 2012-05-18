#  Exercise3: Here are the program specifications for a simple game to be played 
#  against the computer:
#
#  This game is played at the command-line.
#  The game starts when the computer selects three consecutive cells in a 7 cell 
#  row (from 0 to 6). When that's complete, the game asks for your first guess.
#  Guess the computer#'s selected cells in the smallest number of guesses. You 
#  are given a rating or level, based on how well you perform.
#  At the command line, the user types in a number from 0 to 6. The computer 
#  checks if it's one of the selected cells. If it's a hit, increment the 
#  no_of_hits variable. In response to your guess, you'll see a result at the 
#  command-line: either "Hit", "Miss" or "End".
#  When you have guessed all three cells, the game ends by printing out your 
#  rating (your number of guesses).
#  
#  Notes:
#
#  Use only the features we have learned so far, in Ruby.
#  You must design the Object::GameBoard class.
#  The testgameboard.rb program uses your GameBoard class

# testgameboard.rb
require './gameboard'
 
# track how many guesses the user makes
no_of_guesses = 0
 
# instantiate a GameBoard object
gb = GameBoard.new
 
# make a random number for the first cell,
# and use it to make the cell locations array
random_no = rand(5)
 
# make an array for the location of the 3
# consecutive integers out of a possible 7
locations = [random_no, random_no + 1, random_no + 2]
 
# invoke the setter method of the GameBoard
gb.set_locations_cells(locations)
 
# variable to track if the game is alive
is_alive = true

while is_alive
  puts 'Enter a number: '
  STDOUT.flush
  user_guess = gets.ch0omp
  # invoke the check_yourself method on the GameBoard object
  result = gb.check_yourself(user_guess)
  no_of_guesses += 1
  if (result == 'kill')
    is_alive = false
    puts "You took #{no_of_guesses} guesses"
  end
end 
