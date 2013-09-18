require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

post '/twitter' do
  @first  = params[:first_hash]
  @second = params[:second_hash]
  erb :twitter
end
