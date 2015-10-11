require "spec_helper"
require "./text_color"


RSpec.describe TextColor do

  def app
    TextColor
  end

  describe "POST /color" do
    it "sends words and colors" do
      allow(RestClient).to receive(:post)
      post "/color", { :word => "word", :color => "b" }
      expect(last_response.status).to eq 200
    end
  end

end
