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
  attr_reader :info
  GENRE_LIST = ['Blues',
    'Classic Rock',
    'Country',
    'Dance',
    'Disco',
    'Funk',
    'Grunge',
    'Hip-Hop',
    'Jazz',
    'Metal',
    'New Age',
    'Oldies',
    'Other',
    'Pop',
    'R&B',
    'Rap',
    'Reggae',
    'Rock',
    'Techno',
    'Industrial',
    'Alternative',
    'Ska',
    'Death Metal',
    'Pranks',
    'Soundtrack',
    'Euro-Techno',
    'Ambient',
    'Trip-Hop',
    'Vocal',
    'Jazz+Funk',
    'Fusion',
    'Trance',
    'Classical',
    'Instrumental',
    'Acid',
    'House',
    'Game',
    'Sound Clip',
    'Gospel',
    'Noise',
    'AlternRock',
    'Bass',
    'Soul',
    'Punk',
    'Space',
    'Meditative',
    'Instrumental Pop',
    'Instrumental Rock',
    'Ethnic',
    'Gothic',
    'Darkwave',
    'Techno-Industrial',
    'Electronic',
    'Pop-Folk',
    'Eurodance',
    'Dream',
    'Southern Rock',
    'Comedy',
    'Cult',
    'Gangsta',
    'Top 40',
    'Christian Rap',
    'Pop/Funk',
    'Jungle',
    'Native American',
    'Cabaret',
    'New Wave',
    'Psychadelic',
    'Rave',
    'Showtunes',
    'Trailer',
    'Lo-Fi',
    'Tribal',
    'Acid Punk',
    'Acid Jazz',
    'Polka',
    'Retro',
    'Musical',
    'Rock & Roll',
    'Hard Rock']
  def initialize(mp3file)
    
    @info = Hash.new
    mp3file = File.open(mp3file, 'rb:binary') do |file|
      file.seek(-128, IO::SEEK_END)
      if file.read(3) == 'TAG'
        @info = { 
          :title => file.read(30), 
          :artist => file.read(30),
          :album => file.read(30),
          :year => file.read(4),
          :comment => file.read(30),
          :genre => file.read(1).unpack('C')[0]
        }
      end
    end
  end
  
  def to_s
    <<EOF 
Title  : #{@info[:title]}
Artist : #{@info[:artist]}
Album  : #{@info[:album]}
Year   : #{@info[:year]}
Comment: #{@info[:comment]}
Genre  : #{GENRE_LIST[@info[:genre]]}
EOF
  end
  
end

# Genre 24
puts ID3V1.new('song.mp3')
