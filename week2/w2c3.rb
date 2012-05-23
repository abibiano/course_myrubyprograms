# This challenge is a 'light challenge' hopefully for all involved and 
# participating in the course so far.
# 
# SPLIT A STRING ALIGNMENT CHALLENGE
# 
# by: Victor Goff � Sunday, 2 November 2008, 04:03 PM
# There is a way to not have to have your line_num variable hanging around 
# outside of the block. Did you find it?
# 
# @Everyone� Challenge?
# 
# Can you do something so that if it isn�t simply 3 lines, or 1000 lines, 
# your output ends up something like this? (leading spaces or 0�s acceptable)
# Line    1: output line    1
# Line    9: output line    9
# Line  100: output line  100
# Line 1000: output line 1000
# 
# Where the : remains aligned as well as the first letter of the line?
# 
# Here is sample output from my test method�
# Line 01: Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
# Line 02: Duis imperdiet sem eu quam.
# Line 03: Donec bibendum tincidunt purus.
# Line 04: Nunc eu tellus sed turpis volutpat pellentesque.
# Line 05: Nunc accumsan varius elit.
# Line 06: Aenean sit amet magna eget odio ornare vulputate.
# Line 07: Ut ullamcorper tellus non magna.
# Line 08: Sed non arcu vel libero posuere ultricies.
# Line 09: Suspendisse tincidunt ullamcorper tellus.
# Line 10: In ornare lacus ut turpis.
# 
#  
# Anyone else know of a challenge that they think should be able to be solved 
# with the knowledge gained so far? You can also update the first week 
# challenges with things learned from this week if you find it makes it simpler,
# or more elegant! Blocks anyone?

def format_string_with_lines(string_to_format)
  item_length = string_to_format.each_line.count.to_s.length
  formatted_string = ''
  string_to_format.each_line.with_index(1) {|line, index| formatted_string << "Line %0#{item_length}i: %s" % [index, line] }
  formatted_string
end

test_string = <<TESTSTRING
Lorem ipsum dolor sit amet, consectetuer adipiscing elit.
Duis imperdiet sem eu quam.
Donec bibendum tincidunt purus.
Nunc eu tellus sed turpis volutpat pellentesque.
Nunc accumsan varius elit.
Aenean sit amet magna eget odio ornare vulputate.
Ut ullamcorper tellus non magna.
Sed non arcu vel libero posuere ultricies.
Suspendisse tincidunt ullamcorper tellus.
In ornare lacus ut turpis.
TESTSTRING

puts format_string_with_lines test_string