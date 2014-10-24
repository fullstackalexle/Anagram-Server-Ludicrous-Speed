class Word < ActiveRecord::Base
  # Remember to create a migration!
  def anagrams
    Word.where(sorted: self.word.split("").sort.join)
  end
end
