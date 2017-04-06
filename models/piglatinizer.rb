class PigLatinizer
  def is_vowel(char)
    vowels = "aeiouAEIOU"

    vowels.include?(char)
  end

  def piglatinize(word)
    first_letter = word[0]

    if is_vowel(first_letter)
      return word + "way"
    else
      i = 0
      while i < word.length
        if is_vowel(word[i])
          return word.slice(i..-1) + word.slice(0, i) + "ay"
        end
        i += 1
      end
    end
  end

  def to_pig_latin(sentence)
    words_array = sentence.split(" ")
    new_sentence = []

    words_array.each do |word|
      new_sentence << piglatinize(word)
    end

    return new_sentence.join(" ")
  end
end
