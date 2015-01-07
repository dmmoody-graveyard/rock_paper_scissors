require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/beats')

get('/') do
  erb(:index)
end

get('/game_form') do
  erb(:game_form)
end

get('/game_results') do
  @player_one = params.fetch('player_one')
  @player_two = params.fetch('player_two')
  @results = (@player_one).beats?(@player_two)
  erb(:game_results)
end