require "./environment.rb"

run Rack::URLMap.new("/" => TextColor)