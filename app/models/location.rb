class Location < ApplicationRecord
  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  def full_address
   [address, city, postcode].compact.join(',')
  end

  VALID_POSTCODE_REGEX = /\A\s*((GIR\s*0AA)|((([A-PR-UWYZ][0-9]{1,2})|(([A-PR-UWYZ][A-HK-Y][0-9]{1,2})|(([A-PR-UWYZ][0-9][A-HJKSTUW])|([A-PR-UWYZ][A-HK-Y][0-9][ABEHMNPRVWXY]))))\s*[0-9][ABD-HJLNP-UW-Z]{2}))\s*\Z/i

  validates :postcode, presence: true, format: { with: VALID_POSTCODE_REGEX }
end
