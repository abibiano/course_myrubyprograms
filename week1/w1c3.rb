=begin
What the challenge is write a program that provides the following output, with
the following sample of use.
The output is shown first, I will make some notes about it to pay
attention to below:



 Times Table to 9
 ===========================
  1  2  3  4  5  6  7  8  9
  2  4  6  8 10 12 14 16 18
  3  6  9 12 15 18 21 24 27
  4  8 12 16 20 24 28 32 36
  5 10 15 20 25 30 35 40 45
  6 12 18 24 30 36 42 48 54
  7 14 21 28 35 42 49 56 63
  8 16 24 32 40 48 56 64 72
  9 18 27 36 45 54 63 72 81
 ===========================
 
 
 
   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20
   2   4   6   8  10  12  14  16  18  20  22  24  26  28  30  32  34  36  38  40
   3   6   9  12  15  18  21  24  27  30  33  36  39  42  45  48  51  54  57  60
   4   8  12  16  20  24  28  32  36  40  44  48  52  56  60  64  68  72  76  80
   5  10  15  20  25  30  35  40  45  50  55  60  65  70  75  80  85  90  95 100
   6  12  18  24  30  36  42  48  54  60  66  72  78  84  90  96 102 108 114 120
   7  14  21  28  35  42  49  56  63  70  77  84  91  98 105 112 119 126 133 140
   8  16  24  32  40  48  56  64  72  80  88  96 104 112 120 128 136 144 152 160
   9  18  27  36  45  54  63  72  81  90  99 108 117 126 135 144 153 162 171 180
  10  20  30  40  50  60  70  80  90 100 110 120 130 140 150 160 170 180 190 200
  11  22  33  44  55  66  77  88  99 110 121 132 143 154 165 176 187 198 209 220
  12  24  36  48  60  72  84  96 108 120 132 144 156 168 180 192 204 216 228 240
  13  26  39  52  65  78  91 104 117 130 143 156 169 182 195 208 221 234 247 260
  14  28  42  56  70  84  98 112 126 140 154 168 182 196 210 224 238 252 266 280
  15  30  45  60  75  90 105 120 135 150 165 180 195 210 225 240 255 270 285 300
  16  32  48  64  80  96 112 128 144 160 176 192 208 224 240 256 272 288 304 320
  17  34  51  68  85 102 119 136 153 170 187 204 221 238 255 272 289 306 323 340
  18  36  54  72  90 108 126 144 162 180 198 216 234 252 270 288 306 324 342 360
  19  38  57  76  95 114 133 152 171 190 209 228 247 266 285 304 323 342 361 380
  20  40  60  80 100 120 140 160 180 200 220 240 260 280 300 320 340 360 380 400
 

You hopefully notice that there is a space in column 1 (or column 0 if
you are a computer) for the optional heading in the first output
sample. It was the reason I left the “Press ENTER or type command to
continue, was to demonstrate the spacing. The prompt to continue is
NOT part of the challenge.

Here is the sample use, which dictates the method name, the valid
inputs for the table, the optional arguments, etc. Of course, any
questions are welcome.



# multiplication_table (integer, heading = '', decorate = false)
#  returns a string object.


table1 = multiplication_table 9, 'Times Table to 9', true
table2 = multiplication_table 20

puts table1
puts
puts table2
 



Here are the rules:

Required: method needs to provide an object. Don’t just print to screen, it isn’t the goal.
The method needs to accept an Integer.
Required: the table object should have uniform spacing throughout the table.
Optional: You should be able to decorate the table with and without a heading and with and without decoration when asked for.
Preferred but optional: The heading may be Centered to the table, and the decoration (if the decoration is there). The decoration should hang one space (on each side) over the area taken by the numeric matrix. The heading should be on or within the same guide. (As shown in the 9x9 grid).
So, you may note that the method only takes one number. That is so there is no question about a YxY grid.

The goal here is having uniform columnar formatting, regardless of the result of the (valid) input. Everything else is ‘extra’ (and fun!).

Oh, only two samples were given, but, it should be able to handle decoration without heading, or heading without decoration, or both (as shown) or neither (as also shown). This part of it is the extra fun part.

Oh, a side note… You CAN copy and paste the sample solution for the 9x9 grid, and use that as test data, exactly as posted here (taking into account the “\n” that must exist as the last character of each line.
=end

def multiplication_table(integer, heading = '', decorate = false)
  raise ArgumentError, 'Argument integer has to be >=0' if integer < 0
  max_integer = integer * integer
  item_length = max_integer.to_s.length + 1
  line_length = integer != 0 ? integer * item_length : item_length
  heading_offset = line_length / 2 - heading.length / 2
  if heading_offset < 1 
    heading_offset = 1
  end
  line = ''
  line << "\n" * 2
  line << ' ' * heading_offset + heading + "\n" if heading.length > 0
  line << ' ' + '=' * line_length + "\n" if decorate
  if integer != 0
    (1..integer).each do |row|
      (1..integer).each do |column|
        line << "% #{item_length}d" %(row * column)
      end
      line << "\n"
    end
  else
    line << "% #{item_length}d" % integer << "\n"
  end
  line << ' ' + '=' * line_length + "\n" if decorate
  return line
end

table1 = multiplication_table 9, 'Times Table to 9', true
table2 = multiplication_table 20
table3 = multiplication_table 0, 'Test 0', true
table4 = multiplication_table 1, 'Test 1', true
table5 = multiplication_table 5, 'Times Table to 5', true

puts table1
puts
puts table2
puts
puts table3
puts
puts table4
puts
puts table5