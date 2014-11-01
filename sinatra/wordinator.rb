require 'sinatra'
require 'sinatra/json'
require 'shotgun'

get '/' do
  'Welcome to Wordinator'
end

get '/input_words' do
  erb :input_words

# this don't work, Holmes
  if (params[:wordone]).length != (params[:wordtwo]).length
    JSON.parse("#{params[:wordone]} and #{params[:wordtwo]} are NOT anagrams")
  elsif (params[:wordone]).length == (params[:wordtwo]).length && (params[:wordone]).chars.sort { |a, b| a.casecmp(b) } .join == (params[:wordtwo]).chars.sort { |a, b| a.casecmp(b) } .join
    JSON.parse("#{params[:wordone]} and #{params[:wordtwo]} ARE anagrams!!!")
  end
end
