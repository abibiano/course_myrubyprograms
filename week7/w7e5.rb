#  Exercise5. Let's say you want to run some Ruby code (such as a call to a 
#  shell command) repeatedly at a certain interval (for example, once every 
#  five seconds for one minute). Write a method for this. Do not use Thread 
#  class for now. Hint: yield and sleep methods may be required.

def run_command interval, duration
  (duration / interval).times do  
    yield
    sleep(interval)
  end
end

run_command(5, 60){puts `echo %time%`} # works on windows