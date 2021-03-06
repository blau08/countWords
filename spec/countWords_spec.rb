require('rspec')
require('countWords')

describe('String#countWords') do
  it("returns the number of times a word is in a string") do
    expect("dog".countWords("dog dog cat")).to(eq(2))
  end
  it("handles periods, commas, and quotes") do
    expect("dog".countWords('dog, dog. "cat"')).to(eq(2))
  end
  it("returns the number of times a word is in a string") do
    expect("dog".countWords("dog dog cat")).to(eq(2))
  end
end
