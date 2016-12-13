require 'sinatra'
require 'sinatra/reloader'


compliments = [
  "Your instructors love you",
  "Keep pushing!",
  "Is it Ruby Tuesday yet?",
  "The tide is high but I'm holding on.",
  "The Force is strong with you",
  "Believe and have faith.",
  "It's all good."
]


colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]


get '/' do
  @greeting = "Hi, Beautiful!"
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end

get '/:name' do
  @greeting = "Hello, #{params[:name].capitalize}!"
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end
