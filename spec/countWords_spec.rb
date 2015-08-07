require('rspec')
require('countWords')

describe('String#countWords') do
  it("returns the number of times a word is in a string") do
    expect("dog dog cat".countWords("dog")).to(eq(2))
  end
end
