json.array!(@organizations) do |organization|
  json.extract! organization, :id, :organization_name, :address_line1, :address_line2, :city, :state, :zip, :map_link
  json.url organization_url(organization, format: :json)
end
