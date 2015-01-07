require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/rock_paper_scissors')

get('/form') do
  erb(:form)
end

get('/results') do
  input1 = params.fetch('input1')
#  input2 = params.fetch('input2')
  @winner_string = input1.play()
  erb(:results)
end
