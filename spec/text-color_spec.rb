ENV['RACK_ENV'] = 'test'
require "spec_helper"
require "./text-color"


RSpec.describe TextColor do

  def app
    TextColor
  end

  describe "POST /color" do
    it "sends words and colors" do
      post "/color", :word => "word"
      expect(last_response.status).to eq 200
    end
  end

end
