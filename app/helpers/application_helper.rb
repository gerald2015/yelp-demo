module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, "#", class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
  
  def rating_from_reviews(reviews)
    if reviews.blank?
      avg_rating = 0
    else
      avg_rating = reviews.average(:rating).round(2)
    end
  end
  
  def evaluate_stars(avg_rating)
    content_tag(:div, id: "star-rating") do
      content_tag(:span, class: "rating") do
        5.downto(1) do |count|
          star_class = avg_rating < count ? "not_rated_star" : "rated_star"
          content_tag :span, id: "rating-input-1-#{count}", class: "#{star_class}"
        end 
      end
    end
  end
end
