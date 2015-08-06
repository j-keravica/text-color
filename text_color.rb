require "./sinatra/colorhelpers"

class TextColor < Sinatra::Base

	helpers Sinatra::ColorHelpers

	post "/color" do
	  word = params[:word]
	  color = params[:color]
	  puts "Your #{word} will be of color #{color}"
	  RestClient.post(
	  	ENV["SEND_URL"] + "/send",
	  	{:word => word,
	  	:color => choose_color(color)}
	  )
	end

end
