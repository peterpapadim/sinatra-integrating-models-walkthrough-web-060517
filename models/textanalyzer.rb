class TextAnalyzer
  attr_accessor :text

  def initialize(text)
    @text = text
  end

  def count_of_words
    @text.split(" ").count
  end

  def count_of_vowels
    @text.downcase.scan(/[aeoui]/).count
  end

  def count_of_consonants
    @text.downcase.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end

def most_used_letter

  text_without_spaces = @text.downcase.split(' ').join.split('')
  letter_used_most = ""
  letter_count = 0

  text_without_spaces.each do |letter_to_compare|
   current_letter_count = 0
   text_without_spaces.each { |compared_against| current_letter_count += 1 if letter_to_compare == compared_against}
    if current_letter_count > letter_count
      letter_count = current_letter_count
      letter_used_most = letter_to_compare
    end
  end
   biggest = [letter_used_most, letter_count]
 end


end
