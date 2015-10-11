module ColorHelpers

  RAND_COLORS = ["#000000", "#FF0000", "#00A400"]

  def choose_color(color)
    if color == "b"
      return "#000000"
    else
      return RAND_COLORS.sample
    end
  end
end
