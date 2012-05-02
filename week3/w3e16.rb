#  Exercise16. Select all correct ways to do an ascending sort by string length.
#
#  a = ["Magazine", "Sunday", "Jump"]
#  Answers:
#  1. a.sort
#  2. a.sort { |s| s }
#  3. a.sort { |l, r| l <=> r }
#  4. a.sort { |l, r| l.length <=> r.length }
#  5. a.sort_by { |s| s }
#  6. a.sort_by { |s| s.length }

# a = ["Magazine", "Sunday", "Jump"]
  
puts a.sort OK
# puts a.sort { |s| s } NOK
# puts a.sort { |l, r| l <=> r } #=> OK
# puts a.sort { |l, r| l.length <=> r.length } #=> NOK It sorts by the length of the items
puts a.sortsort_by { |s| s } #=> OK
# puts a.sort_by { |s| s.length } #=> NOK It sorts by the length of the items