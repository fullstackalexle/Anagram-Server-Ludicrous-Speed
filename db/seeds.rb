
module WordParser
  def self.add_words
    File.open('db/fixtures/words', 'r').each do |term|
      original = term.chomp
      sorted_word = original.split("").sort.join
      Word.create(word: original, sorted: sorted_word)
    end
  end
end

WordParser.add_words
