#  From Michael Kohl: Many programming languages come with a [Read–eval–print 
#  loop](http://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) or 
#  REPL for short. 
#
#  Ruby has IRB for this purpose, but it's also trivial to build a simple REPL 
#  yourself. Give it a try!

def prompt(display, chomp = true)
  print "#{display} "
  STDOUT.flush
  chomp ? gets.chomp : gets
end

while (code = prompt('>')) != 'bye'
  begin
    puts eval code
  rescue => ex
    puts "#{ex.class}: #{ex.message}"
  end

end
puts 'Good bye'