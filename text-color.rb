class TextColor < Sinatra::Base

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
	  word = params[:word]
	  color = params[:color]
	  puts "Your #{word} will be of color #{color}"
	  puts RestClient.post(
	  	ENV['SEND_URL'] + '/send',
	  	{:word => word,
	  	:color => choose_color(color)}
	  	)
	end

	run! if app_file == $0

end