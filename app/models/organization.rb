class Organization < ActiveRecord::Base
  geocoded_by :create_full_address
  after_validation :geocode

# This builds the full address for Geocoder
  def create_full_address
    "#{address_line1}, #{city}, #{state} #{zip}"
  end
end
