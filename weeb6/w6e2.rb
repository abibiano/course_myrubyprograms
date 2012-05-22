#  Exercise2. Write a Ruby program that analyzes an MP3 file. Many MP3
#  files have a 128-byte data structure at the end called an ID3 tag. These 128 
#  bytes are literally packed with information about the song: its name, 
#  the artist, which album it's from, and so on. You can parse this data 
#  structure by opening an MP3 file and doing a series of reads from a position 
#  near the end of the file. According to the ID3 standard, if you start from 
#  the 128th-to-last byte of an MP3 file and read three bytes, you should get 
#  the string TAG. If you don't, there's no ID3 tag for this MP3 file, and 
#  nothing to do. If there is an ID3 tag present, then the 30 bytes after TAG 
#  contain the name of the song, the 30 bytes after that contain the name of 
#  the artist, and so on. A sample song.mp3 file is available to test your 
#  program. Use Symbols, wherever possible.

class ID3V1
  attr_reader :title, :artist, :album, :year, :comment
  def initialize(mp3file)

    mp3file = File.open(mp3file, 'rb:binary') do |file|
      file.seek(-128, IO::SEEK_END)
      if file.read(3) == 'TAG'
        @title = file.read(30)
        @artist = file.read(30)
        @album = file.read(30)
        @year = file.read(4)
        @comment = file.read(30)
      else
        @title = ''
        @artist = ''
        @album = ''
        @year = ''
        @comment = 'No ID3v1 tag'
      end
    end

  end
end

id3 = ID3V1.new('song.mp3')
puts "Title  : %s" % id3.title
puts "Artist : %s" % id3.artist
puts "Album  : %s" % id3.album
puts "Year   : %s" % id3.year
puts "Comment: %s" % id3.comment
