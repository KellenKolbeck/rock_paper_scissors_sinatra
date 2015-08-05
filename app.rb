require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors_sinatra')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/game') do
  @game = params.fetch('game').rock_paper_scissors()
  erb(:game)
end
