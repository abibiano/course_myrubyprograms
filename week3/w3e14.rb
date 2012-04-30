#  Exercise14 The next set of exercises are sample questions from the Important
#  Ruby Association Certified Ruby Programmer examination. Thanks to Satoshi
#  Asakawa for the Japanese to English translation.
#
#  Select all answers which return true.
#  h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }
#  Answers:
#  1. h.member?("Matz")
#  2. h.member?("Python") # TRUE
#  3. h.include?("Guido")
#  4. h.include?("Ruby")
#  5. h.has_value?("Larry")
#  6. h.exists?("Perl")
h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }

# member? and inlcude? returns true if the given key is present in hash.
# has_value? returns true if the given value is present for some key in hash.
puts h.member?("Matz") # FALS
puts h.member?("Python") # TRUE
puts h.include?("Guido") # FALSE
puts h.include?("Ruby") # TRUE
puts h.has_value?("Larry") # TRUE
# h.exists?("Perl") # Exception: Method exists? is not defined for hash