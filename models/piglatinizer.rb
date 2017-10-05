require 'pry'
class PigLatinizer

  def piglatinize(word)
    letters = word.split("")
    vowels = ["a", "e", "i", "o", "u"]

    if word[0].scan(/[aeiouAEIOU]/).count == 0
      vowel_index = letters.each_index.detect {|i| vowels.include?(letters[i])}
      first_part = letters.drop(vowel_index)
      second_part = letters.shift(vowel_index)
      pig_latin = first_part + second_part + "ay"
    else
      pig_latin = word + "way"
    end
    pig_latin
  end



end
