#require 'sinatra/base'
#require 'rest-client'

class TextColor < Sinatra::Base

	configure do
		enable :sessions
		set :session_secret, '*&(^B234'
	end

	helpers do
	  def choose_color(color)
	    if color == 'b'
	    	return '#000000'
	    else
	    	return ['#000000', '#FF0000', '#00A400'].sample
	    end
	  end
	end

	#send the (word, color) pair to be pushed back to the client
	post '/color' do
	  color = request.cookies['color']
	  word = params[:word]
	  puts "Your #{word} will be of color #{color}"
	  puts RestClient.post(
	  	ENV['SEND_URL'] + '/send',
	  	{:word => word,
	  	:color => choose_color(color)}
	  	)
	end

	#store color information for the user
	get '/set/:color' do
		color = params[:color]
		response.set_cookie "color", color
	end

	run! if app_file == $0

end