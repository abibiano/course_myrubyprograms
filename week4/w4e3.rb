#  Exercise3. Call this program (p026zdeafgm2.rb)
#  
#  Modify your Deaf Grandma program (written
#  earlier): What if grandma doesn't want you to leave?
#  When you shout BYE, she could pretend not to hear
#  you. Change your previous program so that you have
#  to shout BYE three times in a row. Make sure to test
#  your program: if you shout BYE three times, but not
#  in a row, you should still be talking to grandma. You
#  must shout BYE three separate times. If you shout
#  BYEBYEBYE or BYE BYE BYE, grandma should
#  pretend not to hear you (and not count it as a BYE).
#  From Chris Pine#'s Book:
#  http://pine.fm/LearnToProgram/?Chapter=06
def prompt(display, chomp = true)
  print "#{display} "
  STDOUT.flush
  line = gets
  chomp ? line.chomp! : line
end

class Range
  def sample
    [*self].sample
  end
end


while bye = (input = prompt 'You enter: ') == 'BYE' ? bye + 1 : 0 < 3 do 
  puts input == input.upcase ? "Grandma responds: NO, NOT SINCE %i!" % (1930..1950).sample : 'Grandma responds: HUH?! SPEAK UP, SONNY!'  
end

puts 'Good bye'