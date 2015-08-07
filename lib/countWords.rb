require('pry')

class String

  define_method(:countWords) do |words|
    word = self
    list = words.gsub(",", " ").gsub(".", " ").gsub('"', " ").split(" ")

    counter = 0

    list.each do |anagram|
      x = anagram
      if x == word
        counter += 1
      end
    end
    # counter = counter.to_s
    counter
  end
end
