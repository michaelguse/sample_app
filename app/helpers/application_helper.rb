module ApplicationHelper

 # Return a title on a per-page basis.
  def title
    base_title = "Optimize Consulting, LLC - SaMIS Prototype"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
     image_tag("logo.png", :alt => "SaMIS Prototype", :class => "round")
  end

end
