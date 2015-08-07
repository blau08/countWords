class String

  define_method(:countWords) do |words|
    word = self
    anagrams = words.split(" ")
    new_array = []
    count = 0
    sentence = ""

    anagrams.each do |anagram|
      x = anagram.scan(/word/)
      if x == word
        count += 1
      end
    end
    count
  end
end
