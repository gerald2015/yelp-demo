json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :address, :phone, :website, :image
  json.url restaurant_url(restaurant, format: :json)
end
