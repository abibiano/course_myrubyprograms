#  Exercise2. Thanks to Marcos Souza for this exercise.
#  A plain text file has the following contents:
#
#  test test test test test
#  test test test test test
#  test test test test test
#  test test test test test
#  test test test test test
#  test test word test test
#  test test test test test
#  test test test test test
#  test test test test test
#  test test test test test
#  test test test test test
# 
#  Observe that in this file, there exists a word 'word'.
#  Write a clever but readable Ruby program that updates this file and the final
#  contents become like this:
# 
#  test test test test test
#  test test test test test
#  test test test test test
#  test test test test test
#  test test test test test
#  test test inserted word test test
#  test test test test test
#  test test test test test
#  test test Stest test test
#  test test test test test
#  test test test test test
# 
#  Do not hard-code the file name.


unless ARGV.length == 1
  puts 'Usage: ruby w3e2.rb file_name'
  exit
end

file_name = ARGV[0]

old_file = File.read file_name
new_file = old_file.gsub('word', 'inserted word')
File.open(file_name, 'w') {|file| file.puts new_file}
