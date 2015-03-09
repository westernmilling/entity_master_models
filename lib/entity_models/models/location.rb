# A +Location+ represents a mail address.
class Location < ActiveRecord::Base
  include Disableable

  acts_as_paranoid

  belongs_to :entity, :inverse_of => :locations

  validates \
    :entity,
    :is_active,
    :location_name,
    :street_address,
    :city,
    :region,
    :region_code,
    :country,
    :uuid,
    :presence => true

  def to_s
    location_name
  end
end
