module ColorHelpers
  def choose_color(color)
    if color == "b"
      return "#000000"
    else
      return ["#000000", "#FF0000", "#00A400"].sample
    end
  end
end
