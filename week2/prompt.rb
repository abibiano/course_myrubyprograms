# OK, we have pretty much written one behavior quite a few times over and
# over again. And that is the behavior of asking the user of our program 
# for input, after prompting them.
#
# What I would like to see is a library item written for "reuse" to take care 
# of this common activity.
# You can name the file prompt.rb and it should be usable like this:
# Method prompt takes a string, and displays that string as a prompt, and 
# returns what the user gives as an answer.
#
# Have fun with this.

def prompt(display, chomp = true, method = :to_i)
  print "#{display} >  "
  STDOUT.flush
  line = gets
  line.chomp! if chomp
  line.send method
end