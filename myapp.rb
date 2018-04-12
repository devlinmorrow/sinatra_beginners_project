require 'sinatra'
require 'sinatra/reloader'

@name = "Howard"

template = "<h1>@word</h1>"

get '/' do
  @word = "hello"
  ERB.new(template).result(binding)
end

get '/first_name' do
  erb :first_name
end

post '/first_name' do
  erb :post_first_name
end

get '/age' do
  erb :age
end

post '/age' do
end

get '/job' do
  erb :job
end

post '/job' do
  erb :age
end

get '/results' do
  erb :results
end

get '/site' do
  name = @name
  erb :webpage, {:locals => {:name => name} }
end

get '/any' do
  erb :another
end



