require "spec_helper"

RSpec.describe ColorHelpers do

  let(:helper) { Class.new { extend ColorHelpers } }
  
  context "black color option" do
    it "returns the black color code" do
      black = helper.choose_color("b")
      expect(black).to eq("#000000")
    end
  end

  context "random color option" do
    it "returns the random color code" do
      rand = helper.choose_color("r")
      expect(ColorHelpers::RAND_COLORS).to include(rand)
    end
  end

end