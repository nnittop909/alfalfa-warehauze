module ApplicationHelper
 def flash_class(level)
  case level
    when :notice then "alert alert-info"
    when :success then "alert alert-success"
    when :error then "alert alert-error"
    when :alert then "alert alert-alert"
  end
end


def site_name
    "ALFALFA"
  end

  def site_url

      # Our dev & test URL
      "http://localhost:3000"
  end

  def meta_author
    # Change the value below between the quotes.
    "ITWORX Web Design and Development"
  end

  def meta_description
    # Change the value below between the quotes.
    "crafting creative and high quality web applications"
  end

  def meta_keywords
    # Change the value below between the quotes.
    "business licensing, business permit, licensing system"
  end

  # Returns the full title on a per-page basis.
  # No need to change any of this we set page_title and site_name elsewhere.
  def full_title(page_title)
    if page_title.empty?
      site_name
    else
      "#{page_title} | Alfalfa"
    end
  end

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")}, title: 'New Bidder Field')
  end

end
