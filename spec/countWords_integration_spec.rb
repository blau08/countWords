require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('countWords path', {:type => :feature}) do
  it('processes the user entry and he count of word in string') do
    visit('/')
    fill_in('word', :with => "dog")
    fill_in('list', :with => "dog dog cat")
    click_button("Count Words!")
    expect(page).to have_content(2)
  end
end
