require "./lib/color_helpers"

class TextColor < Sinatra::Base

	include ColorHelpers

	post "/color" do
	  word = params[:word]
	  color = params[:color]
	  channel = params[:channel]
	  puts "Your #{word} will be of color #{color} to channel #{channel}"
	  RestClient.post(
	  	ENV["SEND_URL"] + "/send",
	  	{:word => word,
	  	 :color => choose_color(color),
	     :channel => channel}
	  )
	end

end
