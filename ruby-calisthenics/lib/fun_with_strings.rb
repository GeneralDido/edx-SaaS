module FunWithStrings
  def palindrome?
    s = self.downcase.gsub(/\W/, '')
    if s == s.reverse
      true
    else
      false
    end
  end

  def count_words
    s = self.downcase.gsub(/(\n|\t)/,'').gsub(/[^\w\s]/,'').gsub(/\s+/, " ").split(" ")
    count = Hash.new(0)
    s.each do |word|
      count[word] += 1
    end
    count  
  end

  def anagram_groups
    self.split(" ").group_by { |element| element.downcase.chars.sort }.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
