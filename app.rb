require('sinatra')
require('sinatra/reloader')
require('./lib/countWords')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/countWords') do
  @word = params.fetch('word')
  @list = params.fetch('list')
  @wordCount = @word.countWords(@list)
  erb(:countWords)
end
