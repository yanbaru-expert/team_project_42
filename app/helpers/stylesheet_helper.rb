module StylesheetHelper
  def base_color
    if controller_name == "lines"
      "line-bg-color"
    else
      "base-bg-color"
    end
  end
end
