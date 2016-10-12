module FunWithStrings
  def palindrome?

    rev = self.gsub(/\W/, '').reverse.downcase
    
    if self.downcase.gsub(/\W/, '') == rev
      return true
    end
    
    return false
    
  end
  
  def count_words

    h = Hash.new(0)
    string = self.downcase
    array = string.split(/[^\w]/)
    array.each do |value|
    if value != ""
        h[value] += 1
    end
    end
    
    return h
    
  end
  
  def anagram_groups

	  anagram_map = {}
	  self.split.each do |word|
		    word = word.downcase.gsub(/[^a-z]/,"")		
		    sorted_word = word.chars.sort.join
		    
		    if anagram_map.keys.include? sorted_word
			     anagram_map[sorted_word] <<= word
		    else
			     anagram_map[sorted_word] = [word]
		    end
		    
 	  end
 	  
	  anagram_map.values
	  
  end
end

class String
  include FunWithStrings
end