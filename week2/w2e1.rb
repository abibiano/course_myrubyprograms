# Exercise1.
# Write a program that processes the string s = 
# "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
# a line at a time, using all that we have learned so far.
# The expected output is:
# 
# >ruby tmp.rb
# Line 1: Welcome to the forum.
# Line 2: Here you can learn Ruby.
# Line 3: Along with other members.
# >Exit code: 0


s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
s.each_line.with_index(1) {|line, index| puts "Line %i: %s" % [index, line] }
