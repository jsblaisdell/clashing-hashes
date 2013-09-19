require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require_relative 'lib/twitter'

get '/' do
  erb :index
end

post '/twitter' do
  t  = Twitter::Tweet.new("testing...", "JustinBlaisdell")
  t2 = Twitter::Tweet.new("derp", "nblais")
  @tweets = [t, t2]
  @first  = params[:first_hash]
  @second = params[:second_hash]
  erb :twitter
end
