#  Exercise3. Modify your TextAnalyzer program to add the logging feature
require 'logger'
require 'getoptlong'

class TextAnalyzer
  attr_reader :statistics
  
  def initialize(file_name)
    $LOG.info "File analyzed: %s" % file_name
    @statistics = Hash.new
    begin
      content = File.read file_name
      content.gsub!(/\r\n?/, "\n")
      @statistics = {
        :character_count => content.length,
        :character_count_no_spaces => content.gsub(/\s+/, '').length,
        :line_count => content.lines.count,
        :word_count => content.scan(/\S+/).count,
        :sentence_count => content.scan(/[.!?]/).count,
        :paragraph_count => content.scan(/\n{2}/).count
      }
      @statistics[:avg_words_per_sentence] = @statistics[:word_count].to_f / @statistics[:sentence_count]
      @statistics[:avg_sentences_per_paragraph] = @statistics[:sentence_coun].to_f / @statistics[:paragraph_count]
      
      $LOG.debug report
      
    rescue Exception => ex
      $LOG.error "#{ex.class}: #{ex.message}"
      $LOG.error "#{ex.backtrace.inspect}"
      puts "#{ex.class}: #{ex.message}"
    end
  end
  
  def report
    <<EOF
Character count                          : #{@statistics[:character_count]}
Character count (excluding spaces)       : #{@statistics[:character_count_no_spaces]}
Line count                               : #{@statistics[:line_count]}
Word count                               : #{@statistics[:word_count]}
Sentence count                           : #{@statistics[:sentence_count]}
Paragraph count                          : #{@statistics[:paragraph_count]}
Average number of words per sentence     : #{@statistics[:avg_words_per_sentence].round(2)}
Average number of sentences per paragraph: #{@statistics[:avg_sentences_per_paragraph].round(2)}
EOF
  end 
end

unless ARGV.length > 0
  puts 'Usage: ruby analyzer.rb file_name -d -i'
  exit
end

opts = GetoptLong.new(
  [ "--debug", "-d", GetoptLong::NO_ARGUMENT ],
  [ "--info", "-i", GetoptLong::NO_ARGUMENT ])


$LOG = Logger.new('w6e3.log', 'monthly')
opts.each do |opt, arg|
  case opt
  when '--debug'
    $LOG.level = Logger::DEBUG
  when '--info'
    $LOG.level = Logger::INFO
  end
end

file_name = ARGV[0]

text_analyzer = TextAnalyzer.new(file_name)
puts text_analyzer.report
