require 'rubygems'
require 'bundler'


Bundler.require(:default)                   # load all the default gems
Bundler.require(Sinatra::Base.environment)  # load all the environment specific gems

ENV["RACK_ENV"] = "test"
ENV["SEND_URL"] = 'http://localhost:5678'

require './text_color.rb'
