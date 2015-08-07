require('pry')

class String

  define_method(:countWords) do |words|
    list = words.gsub(",", " ").gsub(".", " ").gsub('"', " ").split(" ")

    counter = 0

    list.each do |anagram|
      if self == anagram
        counter += 1
      end
    end
    counter
  end
end
