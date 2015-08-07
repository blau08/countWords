require('pry')

class String

  define_method(:countWords) do |words|
    word = self
    anagrams = words.split(" ")
    # binding.pry
    new_array = []
    count = 0
    sentence = ""

    anagrams.each do |anagram|
      x = anagram
      # binding.pry
      if x == word
        count += 1
        # binding.pry
      end
    end
    count
  end
end
