class Location < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  def full_address
   [address, city, postcode].compact.join(',')
  end
end
