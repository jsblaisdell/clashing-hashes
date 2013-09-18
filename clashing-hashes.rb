require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @name = "Justin"
  # "<h1>hello #{name}</h1>"
  erb :index
end
