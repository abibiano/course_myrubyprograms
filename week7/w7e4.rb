#  Exercise4. Write a method last_modified(file) that takes a file name and 
#  displays something like this: file was last modified 125.873605469919 
#  days ago. Use the Time class.
def last_modified(file)
  seconds_in_a_day = 86400
  (Time.now - File.mtime(file)) / seconds_in_a_day
end

puts last_modified('../README')
