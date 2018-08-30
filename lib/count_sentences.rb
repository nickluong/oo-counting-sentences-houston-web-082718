require 'pry'

class String

  def sentence?
    if self[self.length-1] == "."
      true
    else 
      false 
    end 
  end

  def question?
    if self[self.length-1] == "?"
      true
    else 
      false 
    end 
  end

  def exclamation?
    if self[self.length-1] == "!"
      true
    else 
      false 
    end 
  end

  def count_sentences
    count = 0
    chars = self.split('')
    previous = ""
    chars.each_with_index do |character, index|
      if (character == "." && previous != ".") ||
        (character == "?" && previous != "?") ||
        (character == "!" && previous != "!")
        count += 1 
      end
      previous = character
    end 
    count 
  end
  
  # def count_sentences
  #     self.split(/[.?!]+/).size 
  # end 
end