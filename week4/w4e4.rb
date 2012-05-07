#  Exercise4. Write a Ruby program (call it p028swapcontents.rb) to do the following.
#  Take two text files say A and B. The program should swap the contents of A and B.
#  That is after the program is executed, A should contain B's contents and B should 
#  contains A's contents.

file_1, file_2, = *ARGV

file_tmp = file_1 + '.tmp'
File.rename(file_1, file_tmp) 
File.rename(file_2, file_1) 
File.rename(file_tmp, file_2) 