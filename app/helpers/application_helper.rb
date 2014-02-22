module ApplicationHelper

  def title
  base_title = "Bauteilverwertung Köppel & Klein GmbH"
  if @title.nil?
    base_title
  else
    "#{base_title} - #{@title}"
  end
  end
  
  def logo
    image_tag("logo.png", :alt => "Bauteilverwertung", :class => "round")
  end
  
end
