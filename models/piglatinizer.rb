require 'pry'
class PigLatinizer
  attr_reader :text
 
  def initialize(text="")
<<<<<<< HEAD
    @text = text
=======
    @text = text.downcase
>>>>>>> 1ef3e4b1ef6ab60884b23dd6ea11af0c614f86b4
  end 
  
  def self.latinizeWord(word)
    if word[0].match(/[aeiouAEIOU]/) 
      pigLatin = word + 'way'
    else
      count = 0
      word.split("").each do |i|
        if i.match(/[aeiouAEIOU]/)
          break
        end
        count += 1
      end
      prefix = word[count..-1]
      suffix = word[0..count-1] + "ay"
      pigLatin = prefix + suffix
<<<<<<< HEAD
=======
      binding.pry
>>>>>>> 1ef3e4b1ef6ab60884b23dd6ea11af0c614f86b4
      return pigLatin
    end
  end
  
  def piglatinize(text=self.text)
    array = text.split(" ")
    pigArray = []
    array.each do |word|
      newWord = PigLatinizer.latinizeWord(word)
      pigArray << newWord
    end
    pigLatin = ""
    pigArray.each do |word|
      pigLatin = pigLatin + word + " "
    end
    return pigLatin.strip
  end
end
      