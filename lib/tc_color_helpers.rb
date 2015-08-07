require_relative "color_helpers"
require "test/unit"

class TestColorHelpers < Test::Unit::TestCase

  include ColorHelpers

  def test_choose_color
    assert_equal("#000000", choose_color("b") )
    assert ColorHelpers::RAND_COLORS.include?(choose_color("r"))
  end

end