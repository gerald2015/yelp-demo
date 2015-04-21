json.array!(@pb_js) do |pb_j|
  json.extract! pb_j, :id, :name, :address, :phone, :website, :schedule_id, :price_from, :price_until
  json.url pb_j_url(pb_j, format: :json)
end
