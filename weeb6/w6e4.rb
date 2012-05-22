#  Exercise4. Modify your TextAnalyzer program to add the exception feature.
require 'logger'
$LOG = Logger.new('w6e3.log', 'monthly')

class TextAnalyzer
  attr_reader :character_count, :character_count_no_spaces, :line_count, 
    :word_count, :sentence_count, :paragraph_count, :avg_words_per_sentence, 
    :avg_sentences_per_paragraph
  
  def initialize(file_name)
    @character_count = 0
    @character_count_no_spaces = 0
    @line_count = 0
    @word_count = 0
    @sentence_count = 0
    @paragraph_count = 0
    @avg_words_per_sentence = 0
    @avg_sentences_per_paragraph = 0
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
      $LOG.info "Character count %i" % character_count
      $LOG.info "Character count (excluding spaces) %i" % character_count_no_spaces
      $LOG.info "Line count %i" % line_count
      $LOG.info "Word count %i" % word_count
      $LOG.info "Sentence count %i" % sentence_count
      $LOG.info "Paragraph count %i" % paragraph_count
      $LOG.info "Average number of words per sentence %.2f" % avg_words_per_sentence
      $LOG.info "Average number of sentences per paragraph %.2f" % avg_sentences_per_paragraph
    rescue Errno::ENOENT => ex      
      $LOG.error "File not exists: #{file_name}"
      puts "File not exists: #{file_name}"
    rescue Exception => ex
      $LOG.error "#{ex.class}: #{ex.message}"
      puts "#{ex.class}: #{ex.message}"
    end
  end
end

raise ArgumentError, 'Usage: ruby analyzer.rb file_name' if  ARGV.length != 1

file_name = ARGV[0]

text_analyzer = TextAnalyzer.new(file_name)
puts "Character count %i" % text_analyzer.character_count
puts "Character count (excluding spaces) %i" % text_analyzer.character_count_no_spaces
puts "Line count %i" % text_analyzer.line_count
puts "Word count %i" % text_analyzer.word_count
puts "Sentence count %i" % text_analyzer.sentence_count
puts "Paragraph count %i" % text_analyzer.paragraph_count
puts "Average number of words per sentence %.2f" % text_analyzer.avg_words_per_sentence
puts "Average number of sentences per paragraph %.2f" % text_analyzer.avg_sentences_per_paragraph