#  Exercise3. Modify your TextAnalyzer program to add the logging feature
require 'logger'
require 'getoptlong'

class TextAnalyzer
  attr_reader :character_count, :character_count_no_spaces, :line_count, 
    :word_count, :sentence_count, :paragraph_count, :avg_words_per_sentence, 
    :avg_sentences_per_paragraph
  
  def initialize(file_name)
    $LOG.info "File analyzed: %s" % file_name
    begin
      content = File.read file_name
      content.gsub!(/\r\n?/, "\n")
      @character_count = content.length
      @character_count_no_spaces = content.gsub(/\s+/, '').length
      @line_count = content.lines.count
      @word_count = content.scan(/\S+/).count
      @sentence_count = content.scan(/[.!?]/).count
      @paragraph_count = content.scan(/\n{2}/).count
      @avg_words_per_sentence = word_count.to_f / sentence_count
      @avg_sentences_per_paragraph = sentence_count.to_f / paragraph_count
      $LOG.debug "Character count %i" % character_count
      $LOG.debug "Character count (excluding spaces) %i" % character_count_no_spaces
      $LOG.debug "Line count %i" % line_count
      $LOG.debug "Word count %i" % word_count
      $LOG.debug "Sentence count %i" % sentence_count
      $LOG.debug "Paragraph count %i" % paragraph_count
      $LOG.debug "Average number of words per sentence %.2f" % avg_words_per_sentence
      $LOG.debug "Average number of sentences per paragraph %.2f" % avg_sentences_per_paragraph
    rescue Exception => ex
      $LOG.error "#{ex.class}: #{ex.message}"
      puts "#{ex.class}: #{ex.message}"
    end
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
puts <<EOF
Character count                          : #{text_analyzer.character_count}
Character count (excluding spaces)       : #{text_analyzer.character_count_no_spaces}
Line count                               : #{text_analyzer.line_count}
Word count                               : #{text_analyzer.word_count}
Sentence count                           : #{text_analyzer.sentence_count}
Paragraph count                          : #{text_analyzer.paragraph_count}
Average number of words per sentence     : #{text_analyzer.avg_words_per_sentence.round(2)}
Average number of sentences per paragraph: #{text_analyzer.avg_sentences_per_paragraph.round(2)}
EOF