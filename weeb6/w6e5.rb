#  Exercise5. Here's code for the part of a game that saves the game state to a 
#  file. As a deterrent against cheating, when the game loads a save file it 
#  performs a simple check against the file's modification time. If it differs 
#  from the timestamp recorded inside the file, the game refuses to load the 
#  save file.
#
#  The save_game method is responsible for recording the timestamp:
#  def save_game(file)
#
#  score = 1000
#
#  open(file, "w") do |f|
#
#  f.puts(score)
#
#  f.puts(Time.new.to_i)
#
#  end
#
#  end
#  The load_game method is responsible for comparing the timestamp within the 
#  file to the time the filesystem has associated with the file. Write the 
#  load_game(file) method.
#
#  This mechanism can detect simple forms of cheating:
#  save_game("game.sav")
#
#  sleep(2)
#
#  load_game("game.sav") # => "Your saved score is 1000."
#
#  # Now let's cheat by increasing our score to 9000
#
#  open("game.sav", "r+b") { |f| f.write("9") }
#
#  load_game("game.sav") # RuntimeError: I suspect you of cheating.
#  Since it's possible to modify a file's times with tools like the Unix touch 
#  command, you shouldn't depend on these methods to defend you against a 
#  skilled attacker actively trying to fool your program. 
#
#  Read up on sleep method and Time class.